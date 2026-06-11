import torch
import torch.nn as nn
import torch.nn.init as init
import torch.nn.functional as F


def get_model(model_type: str, input_dim: int, output_dim: int, timesteps: int, device):
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
