import torch
import torch.nn as nn
import torch.nn.init as init
import torch.nn.functional as F
import numpy as np

def get_srq_model(model_type: str, input_dim: int, output_dim: int, timesteps: int, device):
    """
    Factory function to return the model based on type.
    Args:
        model_type (str): The type of model ('conditional_diffusion', etc.).
        input_dim (int): The input dimension for the model.
        output_dim (int): The output dimension for the model.
        timesteps (int): Number of timesteps for the diffusion model.
        device (): The device to run the model on.
    Returns:
        nn.Module: The selected model.
    """
    if model_type == 'conditional_diffusion':
        return ConditionalDiffusionModel(input_dim=input_dim, output_dim=output_dim, timesteps=timesteps, device=device)
    elif model_type == 'fully_connected':  # Example: another type of model
        return FullyConnectedModel(input_dim=input_dim, output_dim=output_dim)
    elif model_type == 'transformer':
        return Transformer(n_head=2, input_dim=input_dim, output_dim=output_dim)
    else:
        raise ValueError(f"Model type {model_type} is not recognized.")


class ConditionalDiffusionModel(nn.Module):
    def __init__(self, input_dim, output_dim, timesteps=1000, device='cuda'):
        super(ConditionalDiffusionModel, self).__init__()
        self.device = device
        self.input_dim = input_dim
        self.output_dim = output_dim
        self.timesteps = timesteps
        self.beta_schedule = torch.linspace(1e-4, 0.02, timesteps)
        self.alpha_schedule = 1.0 - self.beta_schedule
        self.alpha_cumprod = torch.cumprod(self.alpha_schedule, dim=0).to(self.device)

        # 网络结构
        self.fc1 = nn.Linear(input_dim + output_dim, 256)
        self.fc2 = nn.Linear(256, 256)
        self.fc3 = nn.Linear(256, 256)
        self.fc4 = nn.Linear(256, 256)
        self.fc5 = nn.Linear(256, output_dim)
        self.relu = nn.ReLU()

    def forward(self, x, condition):
        x = torch.cat([x, condition], dim=-1)  # 拼接条件向量
        x = self.relu(self.fc1(x))
        x = self.relu(self.fc2(x))
        x = self.relu(self.fc3(x))
        x = self.relu(self.fc4(x))
        x = self.fc5(x)
        return x

    def q_sample(self, x_0, t, condition):
        noise = torch.randn_like(x_0)
        sqrt_alpha_cumprod_t = torch.sqrt(self.alpha_cumprod[t]).view(-1, 1)
        sqrt_one_minus_alpha_cumprod_t = torch.sqrt(1 - self.alpha_cumprod[t]).view(-1, 1)
        return sqrt_alpha_cumprod_t * x_0 + sqrt_one_minus_alpha_cumprod_t * noise

    def p_sample(self, x_t, t, condition):
        epsilon_theta = self.forward(x_t, condition)
        sqrt_alpha_t = torch.sqrt(self.alpha_schedule[t]).view(-1, 1).to(self.device)
        sqrt_one_minus_alpha_t = torch.sqrt(1 - self.alpha_schedule[t]).view(-1, 1).to(self.device)
        x_t_next = (x_t - sqrt_one_minus_alpha_t * epsilon_theta) / sqrt_alpha_t
        return x_t_next

    def loss_fn(self, x_0, t, condition):
        # 从无噪声数据 x_0 生成带噪声数据 x_t
        x_t = self.q_sample(x_0, t, condition)
        # 模型预测噪声
        epsilon_theta = self.forward(x_t, condition)
        # 计算真实噪声
        alpha_cumprod_t = self.alpha_cumprod[t].view(-1, 1)
        noise = (x_t - torch.sqrt(alpha_cumprod_t) * x_0) / torch.sqrt(1 - alpha_cumprod_t)
        # 计算 MSE 损失
        loss = nn.MSELoss()(epsilon_theta, noise)
        return loss


# 新定义的全连接网络（AnotherModel）
class FullyConnectedModel(nn.Module):
    def __init__(self, input_dim: int, output_dim: int):
        super(FullyConnectedModel, self).__init__()

        # 定义全连接层
        self.fc1 = nn.Linear(input_dim, 256)  # 输入层到隐藏层
        self.fc2 = nn.Linear(256, 256)
        self.fc3 = nn.Linear(256, 256)
        self.fc4 = nn.Linear(256, 256)
        self.fc5 = nn.Linear(256, 256)
        self.fc6 = nn.Linear(256, 256)
        self.fc7 = nn.Linear(256, output_dim)  # 隐藏层到输出层

    def forward(self, x):
        # 前向传播：通过激活函数和全连接层
        x = F.relu(self.fc1(x))  # 第一层激活函数
        x = F.relu(self.fc2(x))  # 第二层激活函数
        x = F.relu(self.fc3(x))  # 第二层激活函数
        x = F.relu(self.fc4(x))  # 第二层激活函数
        x = F.relu(self.fc5(x))  # 第二层激活函数
        x = F.relu(self.fc6(x))  # 第二层激活函数
        x = self.fc7(x)  # 输出层
        return x


class PositionalEncoding(torch.nn.Module):
    def __init__(self, in_dim, out_dim, n_position=50):
        super(PositionalEncoding, self).__init__()

        self.linear = torch.nn.Linear(in_features=in_dim, out_features=out_dim)  # 简单代替word embedding
        # Not a parameter
        self.register_buffer('pos_table', self._get_sinusoid_encoding_table(n_position, out_dim))

    def _get_sinusoid_encoding_table(self, n_position, out_dim):
        ''' Sinusoid position encoding table '''

        # TODO: make it with torch instead of numpy

        def get_position_angle_vec(position):
            return [position / np.power(10000, 2 * (hid_j // 2) / out_dim) for hid_j in range(out_dim)]

        sinusoid_table = np.array([get_position_angle_vec(pos_i) for pos_i in range(n_position)])
        sinusoid_table[:, 0::2] = np.sin(sinusoid_table[:, 0::2])  # dim 2i
        sinusoid_table[:, 1::2] = np.cos(sinusoid_table[:, 1::2])  # dim 2i+1

        return torch.FloatTensor(sinusoid_table).unsqueeze(0)

    def forward(self, x):
        x = self.linear(x)
        # return x + self.pos_table[:, :x.size(1)].clone().detach()

        return x


class ScaledDotProductAttention(torch.nn.Module):
    '''
    类的名字来自论文。
    在论文中MultiHeadAttention包含h个ScaledDotProductAttention，h就是MultiHeadAttention中的n_head
    这里把h个ScaledDotProductAttention拼在一起计算的，因此从代码看，值包含一个ScaledDotProductAttention。
    '''

    def __init__(self):
        super(ScaledDotProductAttention, self).__init__()

    def forward(self, q, k, v, mask=None):
        d_k = q.shape[-1]
        '''
        N是batch size，n_head是论文中multi head，值是论文中的h，T是序列长度，ouot_dim是我们计算得到的qkv的长度
        (N, n_head, T, out_dim)和(N, n_head, out_dim, T)做矩阵乘法，得到(N, n_head, T, T)
        这个操作，可以拆分一下进行理解，首先我们忽略(N, n_head)两个维度，即变成(T, out_dim)*(out_dim, T)
        这里实际上是完成了T次编码的打分，我们取(T, out_dim)的第零行，然后维度变成(1, out_dim)*(out_dim, T)
        这个乘法的含义就很明确了，是第零个q和所有的k做点乘，就得到了第零次的打分，这个打分是对编码的全部T个特征进行打分，因此维度是(1, T)，当然还要过一下softmax才是真正的，和为1的分数
        然后取出第一行，也是一样的，只是这个打分是第一次的打分
        最终得到了T个打分，即维度为(T, T)的矩阵
        '''
        scores = torch.matmul(q / (d_k ** 0.5), k.transpose(2, 3))  # (N, n_head, T, T)
        if mask is not None:
            # print(mask.unsqueeze(0).unsqueeze(0).shape, scores.shape)
            scores = scores.masked_fill(mask.unsqueeze(0).unsqueeze(0) == 0, -1e9)
        scores = torch.nn.Softmax(dim=-1)(scores)  # (N, n_head, T, T)
        # print(scores.shape, scores[2, 1, 0, :].sum())
        # print(scores[0, 0])

        '''
        (N, n_head, T, T)和(N, n_head, T, out_dim)做矩阵乘法，得到(N, n_head, T, out_dim)
        这个操作，可以拆分一下进行理解，首先我们忽略(N, n_head)两个维度，即变成(T, T)*(T, out_dim)
        我们取(T, T)的第零行，然后维度变成(1, T)*(T, out_dim)
        这个乘法的含义就很明确了，是第零个打分作用到所有的v，一共是T个v，打分中也有T个分数（和为1）。然后沿着T求和，即得到了(1, out_dim)
        然后取出第一行，也是一样的
        最终得到了T个结果，即维度为(T, out_dim)的矩阵
        '''
        output = torch.matmul(scores, v)  # (N, n_head, T, out_dim)
        # print(output.shape)
        return output, scores


class MultiHeadAttention(torch.nn.Module):
    def __init__(self, n_head, in_dim, out_dim):  # 实际上in_dim==out_dim，有利于残差的加法
        super(MultiHeadAttention, self).__init__()
        in_dim = 1
        out_dim = 1
        self.n_head = n_head
        self.out_dim = out_dim

        self.linear_q = torch.nn.Linear(in_features=in_dim, out_features=n_head * out_dim)
        self.linear_k = torch.nn.Linear(in_features=in_dim, out_features=n_head * out_dim)
        self.linear_v = torch.nn.Linear(in_features=in_dim, out_features=n_head * out_dim)

        self.scaled_dot_production_attention = ScaledDotProductAttention()
        self.linear = torch.nn.Linear(in_features=n_head * out_dim,

                                      out_features=out_dim)  # 这里out_features可以随意指定，这个就是encoder最终输出的qkv的维度，为了简便和out_dim一致

    def forward(self, q, k, v, mask=None):
        batch_size, len_q, len_kv = q.shape[0], q.shape[1], k.shape[1]  # k和v的长度一直一致，但是在解码中，会出现q和kv长度不同的情况

        q = self.linear_q(q).view(batch_size, len_q, self.n_head,
                                  self.out_dim)  # (N, T, in_dim) --> (N, T, n_head * out_dim) --> (N, T, n_head, out_dim)
        k = self.linear_k(k).view(batch_size, len_kv, self.n_head, self.out_dim)
        v = self.linear_v(v).view(batch_size, len_kv, self.n_head, self.out_dim)

        q = q.transpose(1, 2)  # (N, T, n_head, out_dim) --> (N, n_head, T, out_dim)
        k = k.transpose(1, 2)
        v = v.transpose(1, 2)
        # print(q.shape, k.shape, v.shape)

        output, scores = self.scaled_dot_production_attention(q, k, v, mask=mask)
        # print(scores)
        '''
        #(N, n_head, T, out_dim) --> (N, T, n_head, out_dim) --> (N, T, n_head * out_dim)
        这个操作相当于是论文中的concat，由于论文中的多个ScaledDotProductAttention在代码中用一个来实现了，因此view就相当于是concat了。
        这样做并发性好。
        '''
        output = output.transpose(1, 2).contiguous().view(batch_size, len_q, -1)
        # print(output.shape)

        output = self.linear(output)  # (N, T, n_head * out_dim) --> (N, T, out_dim)
        # print(output.shape)

        return output, scores


class PositionWiseFeedForward(torch.nn.Module):
    def __init__(self, in_dim, hidden_dim):
        super(PositionWiseFeedForward, self).__init__()
        self.linear_1 = torch.nn.Linear(in_features=in_dim, out_features=hidden_dim)
        self.linear_2 = torch.nn.Linear(in_features=hidden_dim, out_features=in_dim)

    def forward(self, x):
        x = self.linear_1(x)
        x = torch.nn.ReLU()(x)
        x = self.linear_2(x)
        return x


class Encoder(torch.nn.Module):
    def __init__(self, n_head, in_dim, out_dim):
        super(Encoder, self).__init__()

        self.position_enc = PositionalEncoding(in_dim, out_dim)

        self.multi_head_attention_1 = MultiHeadAttention(n_head=n_head, in_dim=out_dim, out_dim=out_dim)
        self.layer_norm_1 = torch.nn.LayerNorm(36)
        self.layer_norm_1_1 = torch.nn.LayerNorm(out_dim)

        self.position_wise_feed_forward_1 = PositionWiseFeedForward(out_dim, hidden_dim=128)
        self.layer_norm_1_2 = torch.nn.LayerNorm(out_dim)

        self.scores_for_paint = None

    def forward(self, x):
        # qkv = self.position_enc(x)  # (N, T, 37) --> (N, T, 64) 在encoder中qkv三个tensor是一样的
        qkv = x
        '''
        一下6行有效代码就是一个完整的encoder。
        在论文中，有n个encoder首尾相连，这里作为demo只用一个
        '''

        residual = qkv  # 根据论文，残差连接的是q。在encoder中，qkv是相同的；在decoder中，出现了k和v相同，但是和q不同的情形
        outputs, scores = self.multi_head_attention_1(qkv, qkv, qkv)  # 返回的scores用于可视化
        self.scores_for_paint = scores.detach().cpu().numpy()  # 用于绘制


        outputs = outputs + residual
        # outputs = self.layer_norm_1_1(outputs + residual)  # 轮文中的Add & Norm
        # # # print(outputs.shape)
        # #
        # residual = outputs
        # # outputs = self.position_wise_feed_forward_1(outputs)
        # outputs = self.layer_norm_1_2(outputs + residual)  # 轮文中的Add & Norm
        # # print(outputs.shape)

        # outputs = qkv
        return outputs


def get_subsequent_mask(seq):
    seq_len = seq.shape[1]
    ones = torch.ones((seq_len, seq_len), dtype=torch.int, device=seq.device)
    mask = 1 - torch.triu(ones, diagonal=1)
    # print(mask)
    return mask


class Decoder(torch.nn.Module):
    def __init__(self, n_head, in_dim, out_dim):
        super(Decoder, self).__init__()

        self.position_enc = PositionalEncoding(in_dim, out_dim)

        self.multi_head_attention_1_1 = MultiHeadAttention(n_head=n_head, in_dim=out_dim, out_dim=out_dim)
        self.layer_norm_1_1 = torch.nn.LayerNorm(out_dim)

        self.multi_head_attention_1_2 = MultiHeadAttention(n_head=n_head, in_dim=out_dim, out_dim=out_dim)
        self.layer_norm_1_2 = torch.nn.LayerNorm(out_dim)

        self.position_wise_feed_forward_1 = PositionWiseFeedForward(out_dim, hidden_dim=128)
        self.layer_norm_1_3 = torch.nn.LayerNorm(out_dim)

        self.scores_for_paint = None

    def forward(self, enc_outputs, target):
        qkv = self.position_enc(target)  # 在encoder中qkv三个tensor是一样的

        residual = qkv  # 根据论文，残差连接的是q。在encoder中，qkv是相同的；在decoder中，出现了k和v相同，但是和q不同的情形
        outputs, scores = self.multi_head_attention_1_1(qkv, qkv, qkv,
                                                        mask=get_subsequent_mask(target))  # 返回的scores用于可视化
        outputs = self.layer_norm_1_1(outputs + residual)  # 轮文中的Add & Norm，这里output就是q
        # print(outputs.shape)

        residual = outputs
        outputs, scores = self.multi_head_attention_1_2(outputs, enc_outputs, enc_outputs)
        self.scores_for_paint = scores.detach().cpu().numpy()  # 解码时每次会多次赋值，用最后的
        outputs = self.layer_norm_1_2(outputs + residual)

        residual = outputs
        outputs = self.position_wise_feed_forward_1(outputs)
        outputs = self.layer_norm_1_3(outputs + residual)  # 轮文中的Add & Norm
        # print(outputs.shape)

        return outputs


class Activation_Net(torch.nn.Module):
    """
    在上面的simpleNet的基础上，在每层的输出部分添加了激活函数
    """

    def __init__(self, in_dim=240, n_hidden_1=512, n_hidden_2=512, out_dim=3):
        super(Activation_Net, self).__init__()
        self.layer1 = torch.nn.Sequential(torch.nn.Linear(in_dim, n_hidden_1), torch.nn.ReLU(True))
        self.layer2 = torch.nn.Sequential(torch.nn.Linear(n_hidden_1, n_hidden_2), torch.nn.ReLU(True))
        self.layer3 = torch.nn.Sequential(torch.nn.Linear(n_hidden_1, n_hidden_2), torch.nn.ReLU(True))
        self.layer4 = torch.nn.Sequential(torch.nn.Linear(n_hidden_1, n_hidden_2), torch.nn.ReLU(True))
        # self.layer5 = torch.nn.Sequential(torch.nn.Linear(n_hidden_1, n_hidden_2), torch.nn.ReLU(True))
        self.layer6 = torch.nn.Sequential(torch.nn.Linear(n_hidden_2, out_dim))
        self.sigmoid = torch.nn.Sigmoid()
        """
        这里的Sequential()函数的功能是将网络的层组合到一起。
        """

    def forward(self, x):
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer6(x)
        # x = self.layer5(x)
        # x = self.layer6(x)
        # x = self.sigmoid(x) - 0.5  # 缩放输出到 0.5 到 4 的范围
        return x


class Transformer(torch.nn.Module):
    def __init__(self, n_head: int, input_dim: int, output_dim: int):
        super(Transformer, self).__init__()

        self.encoder = Encoder(n_head, in_dim=input_dim, out_dim=output_dim)  # 37是human readable日期格式的字符串vocabulary数，和onehot向量长度一直
        self.decoder = Decoder(n_head, in_dim=input_dim, out_dim=output_dim)  # 12是machine readable日期格式的字符串vocabulary数，和onehot向量长度一直
        self.linear = Activation_Net(out_dim=output_dim)

    def forward(self, x):
        enc_outputs = self.encoder(x)

        # enc_outputs = x

        # outputs = self.decoder(enc_outputs, y)
        # outputs = self.linear(outputs)

        enc_outputs = enc_outputs.squeeze(-1)
        outputs = self.linear(enc_outputs)

        # print(outputs.shape)
        # outputs = torch.nn.Softmax(dim=-1)(outputs)
        # print(outputs.shape)
        return outputs

    def size(self):
        size = sum([p.numel() for p in self.parameters()])
        print('%.2fKB' % (size * 4 / 1024))