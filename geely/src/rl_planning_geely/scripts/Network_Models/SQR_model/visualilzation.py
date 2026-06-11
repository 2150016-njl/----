from pathlib import Path

import numpy as np
import matplotlib.pyplot as plt
import matplotlib
import seaborn as sns

from scipy.signal import savgol_filter
matplotlib.use('Agg')  # 切换到非交互式后端


def smooth_scores_simple_moving_average(scores, window_size=80):
    """
    使用简单移动平均法平滑分数。
    :param scores: 原始分数列表
    :param window_size: 平滑窗口大小，建议为奇数
    :return: 平滑后的分数列表
    """
    smoothed_scores = []
    for i in range(len(scores)):
        start = max(0, i - window_size // 2)
        end = min(len(scores), i + window_size // 2 + 1)
        window = scores[start:end]
        smoothed_scores.append(sum(window) / len(window))
    return smoothed_scores


def rank_states_by_importance(importance_scores):
    """
    根据重要性得分对状态进行排序。

    参数:
        importance_scores (np.ndarray): 每个状态的重要性得分，形状为 (259,)。

    返回:
        ranked_indices (np.ndarray): 排序后的状态索引，从最重要到最不重要。
        ranked_scores (np.ndarray): 排序后的重要性得分。
    """
    ranked_indices = np.argsort(importance_scores)[::-1]  # 从高到低排序
    ranked_scores = importance_scores[ranked_indices]
    return ranked_indices, smooth_scores_simple_moving_average(ranked_scores)

def calculate_state_importance(attention_weights, method='outgoing', normalize='zscore'):
    """
    计算每个状态的重要性得分。

    参数:
        attention_weights (np.ndarray): 注意力权重矩阵，形状为 (259, 259)。
        method (str): 计算方法，可选 'outgoing'（出度）或 'incoming'（入度）。

    返回:
        importance_scores (np.ndarray): 每个状态的重要性得分，形状为 (259,)。
    """
    if method == 'outgoing':
        # 基于出度计算重要性
        importance_scores = np.sum(attention_weights, axis=1)
    elif method == 'incoming':
        # 基于入度计算重要性
        importance_scores = np.sum(attention_weights, axis=0)
    else:
        raise ValueError("Method must be 'outgoing' or 'incoming'.")

    if normalize == 'zscore':
        importance_scores = (importance_scores - np.mean(importance_scores)) / np.std(importance_scores)
    elif normalize == 'minmax':
        importance_scores = (importance_scores - np.min(importance_scores)) / (
                    np.max(importance_scores) - np.min(importance_scores))

    elif normalize == 'log':
        importance_scores = np.log1p(importance_scores)  # 避免对0取对数

    return importance_scores


def plot_state_importance(importance_scores, result_path, top_k=20):
    """
    绘制状态重要性得分的柱状图。

    参数:
        importance_scores (np.ndarray): 每个状态的重要性得分，形状为 (259,)。
        top_k (int): 仅显示前 top_k 个最重要的状态。
    """
    # 排序
    ranked_indices, ranked_scores = rank_states_by_importance(importance_scores)

    # 取前 top_k 个状态
    top_indices = ranked_indices[:top_k]
    top_scores = ranked_scores[:top_k]

    # 绘制柱状图
    plt.figure(figsize=(12, 6))
    plt.bar(range(top_k), top_scores, color='skyblue')
    plt.xticks(range(top_k), top_indices, rotation=90)
    plt.xlabel("State Index")
    plt.ylabel("Importance Score")
    plt.title(f"Top {top_k} Important States")
    plt.savefig(Path(result_path) / 'attention_importance.png')

def visualize_predictions_and_statistics(model, predictions, ground_truth, result_path,
                                        fig_name='predictions_visualization.png',
                                        num_samples=400):
    """
    可视化一维预测值和真实值，并绘制相关统计图。

    参数:
        predictions (np.ndarray): 模型预测值，形状为 (num_samples,)。
        ground_truth (np.ndarray): 真实值，形状为 (num_samples,)。
        result_path (Path or str): 结果保存路径。
        fig_name (str): 保存的图像文件名。
        num_samples (int): 随机选择的样本数量。
    """
    # 随机选择样本
    indices = np.random.choice(predictions.shape[0], num_samples, replace=False)
    selected_predictions = predictions[indices]
    selected_ground_truth = ground_truth[indices]

    # 创建画布，设置三个子图
    fig, axes = plt.subplots(1, 1, figsize=(24, 6))
    # 散点图：预测值 vs 真值
    axes.scatter(selected_predictions, selected_ground_truth, alpha=0.6, color='blue',
                 label='Predictions vs Ground Truth')
    axes.plot([selected_ground_truth.min(), selected_ground_truth.max()],
              [selected_ground_truth.min(), selected_ground_truth.max()],
              color='red', linestyle='--', label='Ideal Line (y = x)')

    axes.set_title('Random Sample Predictions vs Ground Truth')
    axes.set_xlabel('Predictions')
    axes.set_ylabel('Ground Truth')
    axes.grid(True)
    axes.legend()

    # 计算���差

    # 保存和显示图像
    plt.tight_layout()
    plt.savefig(Path(result_path) / fig_name)
    plt.show()


    dec_scores = model.encoder.scores_for_paint
    # 假设 attention_weights 是 259x259 的注意力权重矩阵

    # 计算状态重要性（基于出度）
    importance_scores = calculate_state_importance(dec_scores[0][0], method='incoming')

    # 排序状态重要性
    ranked_indices, ranked_scores = rank_states_by_importance(importance_scores)

    # 打印前 10 个最重要的状态
    print("Top 10 important states:")
    for i, (idx, score) in enumerate(zip(ranked_indices[:10], ranked_scores[:10])):
        print(f"Rank {i + 1}: State {idx} (Score: {score:.4f})")

    # 可视化前 20 个最重要的状态
    plot_state_importance(importance_scores, result_path, top_k=259 )