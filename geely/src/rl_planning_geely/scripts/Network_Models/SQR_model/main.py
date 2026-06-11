# main.py
import argparse
import torch
import yaml
from data_loader import preprocess_data, split_data, CustomDataset
from trainer import trainer_factory
from visualilzation import visualize_predictions_and_statistics
from model import get_model
import numpy as np
from torch.utils.data import DataLoader
from pathlib import Path
import yaml
import os
from datetime import datetime


def get_project_root() -> Path:
    """获取项目的根路径（假设项目根目录是当前文件的上两级目录）。"""
    curr_path = Path(__file__).resolve()  # 当前文件的绝对路径
    return curr_path.parent.parent.parent.parent  # 项目根路径


def load_config(config_path):
    with open(config_path, 'r', encoding='utf-8') as file:
        config = yaml.safe_load(file)
    return config



def parse_args():
    """解析命令行参数"""
    parser = argparse.ArgumentParser(description="训练和验证模型")
    parser.add_argument('--mode', type=int, required=True, choices=[0, 1], help="运行模式：1 表示 train，0 表示 eval")
    return parser.parse_args()


def main():
    # 设置随机种子
    torch.manual_seed(42)
    np.random.seed(42)
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    # 解析命令行参数
    args = parse_args()

    # 读取配置文件
    root_path = get_project_root()
    config_path = root_path / 'config/SRQ/default.yaml'
    model_dir = root_path / 'models/SQR_model/checkpoints'

    config = load_config(config_path)

    model_dir.mkdir(parents=True, exist_ok=True)

    # 从配置中获取模型参数
    model_type = config['model']['type']
    train_name = config['model']['train_name']
    epochs = config['training']['epochs']
    batch_size = config['training']['batch_size']
    model_name = model_type
    timesteps = config['model'].get('timesteps', None)  # 扩散模型的时间步数（可能不适用全连接模型）

    # 数据准备
    data_dir = root_path / 'datasets/processed_data'  # 数据文件夹路径
    # 数据处理
    data, labels, _, _ = preprocess_data(data_dir)
    train_data, val_data, train_labels, val_labels = split_data(data, labels)

    # 创建数据加载器
    train_dataset = CustomDataset(train_data, train_labels)
    val_dataset = CustomDataset(val_data, val_labels)

    train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)
    val_loader = DataLoader(val_dataset, batch_size=batch_size, shuffle=False)

    # 超参数
    input_dim = train_data.shape[1]
    output_dim = train_labels.shape[1]
    model_path = os.fspath(model_dir / (model_name + '_' + train_name + '_epoch_num_' + str(epochs) + '.pth'))
    # 根据配置选择模型
    model = get_model(model_type=model_type, input_dim=input_dim, output_dim=output_dim, timesteps=timesteps,
                      device=device)

    # 训练配置
    batch_size = config['training']['batch_size']
    learning_rate = config['training']['learning_rate']

    # 初始化优化器等
    optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate)

    trainer = trainer_factory(model_type)
    if args.mode == 1:
        # 训练模型
        print("开始训练模型...")
        model = trainer.train_model(model, model_path, train_loader, val_loader, optimizer, epochs=epochs,
                                    device=device)

    # 验证模型
    print("开始验证模型...")
    model.load_state_dict(torch.load(model_path))
    predictions, ground_truth = trainer.validate_model(model, val_loader, device=device)

    # 反标准化数据
    # predictions = scaler_labels.inverse_transform(predictions)
    # ground_truth = scaler_labels.inverse_transform(ground_truth)

    # 可视化预测结果
    print("开始可视化...")
    result_path = root_path / 'results/SQR_model/'
    result_path.mkdir(parents=True, exist_ok=True)
    visualize_predictions_and_statistics(model, predictions, ground_truth, result_path,
                                         model_name + '_' + train_name + '_epoch_num_' + str(epochs) + '.png')



if __name__ == "__main__":
    main()
