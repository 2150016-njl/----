import torch
import torch.optim as optim
import torch.nn as nn
from tqdm import tqdm
from sklearn.metrics import mean_squared_error
import numpy as np
from pathlib import Path
from torch.optim.lr_scheduler import StepLR

import time


def trainer_factory(model_type):
    """
    工厂函数，根据模型类型返回相应的训练器。

    参数：
        model_type (str): 模型的类型，用于选择相应的训练器。
\
    返回：
        Trainer: 返回相应的训练器实例。
    """

    # 根据模型类型返回相应的训练器
    if model_type == 'conditional_diffusion':
        print("Returning Conditional_Diffusion_Trainer...")
        return Conditional_Diffusion_Trainer()
    elif model_type == 'fully_connected':  # Example: another type of model
        print("Returning Fully_Connected_Trainer...")
        return Fully_Connected_Trainer()
    elif model_type == 'transformer':
        print("Returning Transformer_Trainer...")
        return Transformer_Trainer()
    else:
        raise ValueError(f"Unsupported model type: {model_type}")


class Trainer:
    def __init__(self):
        pass

    def train_model(self, model, model_name, train_loader, val_loader, optimizer, epochs=10, device='cpu'):
        pass

    def validate_model(self, model, val_loader, device='cpu'):
        pass


class Conditional_Diffusion_Trainer(Trainer):
    def __init__(self):
        super().__init__()

    def train_model(self, model, model_path, train_loader, val_loader, optimizer, epochs=10, device='cpu'):
        model.to(device)
        best_val_loss = float('inf')
        print(f"Train loader length: {len(train_loader)}")
        print(f"Validation loader length: {len(val_loader)}")
        for epoch in range(epochs):
            model.train()
            train_loss = 0.0
            with tqdm(train_loader, desc=f'Epoch {epoch + 1}/{epochs}', mininterval=0.01) as pbar:
                for step, (data, labels) in enumerate(pbar):
                    data, labels = data.to(device), labels.to(device)
                    condition = data

                    optimizer.zero_grad()
                    t = torch.randint(0, model.timesteps, (data.size(0),), device=device)

                    loss = model.loss_fn(labels, t, condition)
                    loss.backward()
                    optimizer.step()
                    train_loss += loss.item()
                    # 每隔50步更新一次训练损失，以确保更新频率合适
                    if step % 50 == 0:
                        pbar.set_postfix(train_loss=train_loss / (step + 1))  # 实时更新训练损失
                    pbar.update(1)  # 手动更新进度条
            model.eval()
            val_loss = 0.0
            with torch.no_grad():
                for data, labels in val_loader:
                    data, labels = data.to(device), labels.to(device)
                    condition = data
                    t = torch.randint(0, model.timesteps, (data.size(0),), device=device)

                    loss = model.loss_fn(labels, t, condition)
                    val_loss += loss.item()

            train_loss /= len(train_loader)
            val_loss /= len(val_loader)
            print()  # 空一行
            separator = "=" * 40  # 假设 40 个等号足够长
            print(separator)
            print(f"  Train Loss: {train_loss: .4f}  |  Val Loss: {val_loss: .4f}")
            print(separator)
            if val_loss < best_val_loss:
                best_val_loss = val_loss
                torch.save(model.state_dict(), model_path)
        return model

    def validate_model(self, model, val_loader, device='cuda'):
        model.to(device)
        model.eval()

        predictions = []
        ground_truth = []

        with torch.no_grad():
            for data, labels in val_loader:
                data, labels = data.to(device), labels.to(device)
                condition = data

                # 初始化纯噪声 (x_T)
                batch_size = data.size(0)
                x_t = torch.randn(batch_size, model.output_dim, device=device)  # 高斯噪声

                for t in range(model.timesteps - 1, -1, -1):
                    x_t = model.p_sample(x_t, t, condition)

                predictions.append(x_t.cpu().numpy())
                ground_truth.append(labels.cpu().numpy())

        predictions = np.concatenate(predictions, axis=0)
        ground_truth = np.concatenate(ground_truth, axis=0)

        return predictions, ground_truth


class Fully_Connected_Trainer(Trainer):
    def __init__(self):
        super().__init__()

    def train_model(self, model, model_path, train_loader, val_loader, optimizer, epochs=10, device='cpu'):
        model.to(device)
        criterion = nn.MSELoss()  # 创建实例

        best_val_loss = float('inf')
        print(f"Train loader length: {len(train_loader)}")
        print(f"Validation loader length: {len(val_loader)}")
        for epoch in range(epochs):
            model.train()
            train_loss = 0.0
            with tqdm(train_loader, desc=f'Epoch {epoch + 1}/{epochs}', mininterval=0.01) as pbar:
                for step, (data, labels) in enumerate(pbar):
                    data, labels = data.to(device), labels.to(device)
                    optimizer.zero_grad()
                    outputs = model(data)  # 前向传播
                    loss = criterion(outputs, labels)  # 调用实例计算损失
                    loss.backward()  # 反向传播
                    optimizer.step()  # 更新参数

                    train_loss += loss.item()
                    # 每隔50步更新一次训练损失，以确保更新频率合适
                    if step % 50 == 0:
                        pbar.set_postfix(train_loss=train_loss / (step + 1))  # 实时更新训练损失
                    pbar.update(1)  # 手动更新进度条
            model.eval()
            val_loss = 0.0
            with torch.no_grad():
                for data, labels in val_loader:
                    data, labels = data.to(device), labels.to(device)
                    outputs = model(data)  # 前向传播
                    loss = criterion(outputs, labels)  # 调用实例计算损失
                    val_loss += loss.item()

            train_loss /= len(train_loader)
            val_loss /= len(val_loader)
            print()  # 空一行
            separator = "=" * 40  # 假设 40 个等号足够长
            print(separator)
            print(f"  Train Loss: {train_loss: .4f}  |  Val Loss: {val_loss: .4f}")
            print(separator)
            if val_loss < best_val_loss:
                best_val_loss = val_loss
                torch.save(model.state_dict(), model_path)

        return model

    def validate_model(self, model, val_loader, device='cpu'):
        model.to(device)
        model.eval()

        predictions = []
        ground_truth = []

        with torch.no_grad():
            for data, labels in val_loader:
                data, labels = data.to(device), labels.to(device)
                outputs = model(data)  # 前向传播
                predictions.append(outputs.cpu().numpy())
                ground_truth.append(labels.cpu().numpy())

        predictions = np.concatenate(predictions, axis=0)
        ground_truth = np.concatenate(ground_truth, axis=0)

        return predictions, ground_truth

class Transformer_Trainer(Trainer):
    def __init__(self):
        super().__init__()

    def train_model(self, model, model_path, train_loader, val_loader, optimizer, epochs=10, device='cpu'):
        model.to(device)
        criterion = nn.MSELoss()  # 创建实例

        best_val_loss = float('inf')
        print(f"Train loader length: {len(train_loader)}")
        print(f"Validation loader length: {len(val_loader)}")
        for epoch in range(epochs):
            model.train()
            train_loss = 0.0
            with tqdm(train_loader, desc=f'Epoch {epoch + 1}/{epochs}', mininterval=0.01) as pbar:
                for step, (data, labels) in enumerate(pbar):
                    data, labels = data.unsqueeze(dim= -1).to(device), labels.to(device)
                    optimizer.zero_grad()
                    outputs = model(data)  # 前向传播
                    loss = criterion(outputs, labels)  # 调用实例计算损失
                    loss.backward()  # 反向传播
                    optimizer.step()  # 更新参数

                    train_loss += loss.item()
                    # 每隔50步更新一次训练损失，以确保更新频率合适
                    if step % 50 == 0:
                        pbar.set_postfix(train_loss=train_loss / (step + 1))  # 实时更新训练损失
                    pbar.update(1)  # 手动更新进度条
            model.eval()
            val_loss = 0.0
            with torch.no_grad():
                for data, labels in val_loader:
                    data, labels = data.unsqueeze(dim=-1).to(device), labels.to(device)
                    outputs = model(data)  # 前向传播
                    loss = criterion(outputs, labels)  # 调用实例计算损失
                    val_loss += loss.item()

            train_loss /= len(train_loader)
            val_loss /= len(val_loader)
            print()  # 空一行
            separator = "=" * 40  # 假设 40 个等号足够长
            print(separator)
            print(f"  Train Loss: {train_loss: .4f}  |  Val Loss: {val_loss: .4f}")
            print(separator)
            if val_loss < best_val_loss:
                best_val_loss = val_loss
                torch.save(model.state_dict(), model_path)

        return model

    def validate_model(self, model, val_loader, device='cpu'):
        model.to(device)
        model.eval()

        predictions = []
        ground_truth = []

        with torch.no_grad():
            for data, labels in val_loader:
                data, labels = data.unsqueeze(dim=-1).to(device), labels.to(device)
                outputs = model(data)  # 前向传播
                predictions.append(outputs.cpu().numpy())
                ground_truth.append(labels.cpu().numpy())

        predictions = np.concatenate(predictions, axis=0)
        ground_truth = np.concatenate(ground_truth, axis=0)

        return predictions, ground_truth

