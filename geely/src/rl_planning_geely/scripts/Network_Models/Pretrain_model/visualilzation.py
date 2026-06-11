import numpy as np
import matplotlib.pyplot as plt
import matplotlib
import seaborn as sns

matplotlib.use('Agg')  # 切换到非交互式后端


def visualize_predictions_and_statistics(predictions, ground_truth, result_path,
                                         fig_name='predictions_visualization.png',
                                         num_samples=400):
    # 随机选择样本
    indices = np.random.choice(predictions.shape[0], num_samples, replace=False)
    selected_predictions = predictions[indices]
    selected_ground_truth = ground_truth[indices]

    # 创建画布，设置三个子图
    fig, axes = plt.subplots(1, 3, figsize=(24, 6))

    # 散点图：预测值 vs 真值
    axes[0].scatter(selected_predictions[:, 0], selected_predictions[:, 1], alpha=0.6, color='blue',
                    label='Predictions')
    axes[0].scatter(selected_ground_truth[:, 0], selected_ground_truth[:, 1], alpha=0.6, color='red',
                    label='Ground Truth')

    # 连接预测值和真值
    for i in range(len(selected_predictions)):
        axes[0].plot([selected_predictions[i, 0], selected_ground_truth[i, 0]],
                     [selected_predictions[i, 1], selected_ground_truth[i, 1]],
                     color='gray', alpha=0.1, linestyle='--')

    axes[0].set_title('Random Sample Predictions vs Ground Truth')
    axes[0].set_xlabel('Prediction X')
    axes[0].set_ylabel('Prediction Y')
    axes[0].set_xlim(-2, 2)
    axes[0].set_ylim(-2, 2)
    axes[0].grid(True)
    axes[0].legend()

    # 计算误差
    errors = selected_predictions - selected_ground_truth

    # 热力图：误差密度
    sns.kdeplot(x=errors[:, 0], y=errors[:, 1], cmap='Reds', fill=True, ax=axes[1])
    axes[1].set_title('Error Density Heatmap (Prediction - Ground Truth)')
    axes[1].set_xlabel('Error X')
    axes[1].set_ylabel('Error Y')
    axes[1].set_xlim(-2, 2)
    axes[1].set_ylim(-2, 2)
    axes[1].grid(True)

    # 直方图：误差大小分布
    error_magnitude = np.linalg.norm(errors, axis=1)  # 计算误差大小
    bin_edges = np.linspace(0, 5, 31)  # 从 -5 到 5，分为 30 个区间
    sns.histplot(error_magnitude, kde=True, color='orange', bins=bin_edges, ax=axes[2])
    axes[2].set_title('Error Magnitude Distribution')
    axes[2].set_xlabel('Error Magnitude')
    axes[2].set_ylabel('Frequency')
    axes[2].set_xlim(-2, 5)
    axes[2].set_ylim(0, 200)
    axes[2].grid(True)

    # 保存和显示图像
    plt.tight_layout()
    plt.savefig(result_path / fig_name)
    # plt.show()
