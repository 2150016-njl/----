import os
import pickle
import numpy as np
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
import torch
from torch.utils.data import Dataset


def load_data(data_dir):
    data_files = [os.path.join(data_dir, f) for f in os.listdir(data_dir) if f.endswith('.pkl')]
    data = []
    labels = []

    for file in data_files:
        with open(file, 'rb') as f:
            data_dict = pickle.load(f)
            data.append(data_dict['state'])
            labels.append(data_dict['action'])

    data = np.concatenate(data, axis=0)
    labels = np.concatenate(labels, axis=0)
    return data, labels


class CustomDataset(Dataset):
    def __init__(self, data, labels):
        self.data = data
        self.labels = labels

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        sample = {
            'data': torch.tensor(self.data[idx], dtype=torch.float32),
            'label': torch.tensor(self.labels[idx], dtype=torch.float32)
        }
        return sample['data'], sample['label']


def preprocess_data(data_dir):
    data, labels = load_data(data_dir)

    scaler_data = StandardScaler()
    scaler_labels = StandardScaler()
    #
    # data = scaler_data.fit_transform(data)
    # labels = scaler_labels.fit_transform(labels)

    return data, labels, scaler_data, scaler_labels


def split_data(data, labels, test_size=0.2, random_state=42):
    return train_test_split(data, labels, test_size=test_size, random_state=random_state)
