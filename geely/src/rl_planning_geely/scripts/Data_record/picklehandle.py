import pickle
import os
import datetime

class TimeStampedPickleHandler:
    def __init__(self, relative_path):
        # 将相对路径转换为绝对路径
        self.file_path = os.path.join(os.path.dirname(__file__), relative_path)

    def save_to_pickle(self, data):
        """
        将带有时间戳的数据追加到pickle文件中
        :param data: 需要追加的数据
        """
        # 添加时间戳
        timestamped_data = {
            'timestamp': datetime.datetime.now().isoformat(),
            'data': data
        }

        # 如果文件存在，先加载现有数据
        if os.path.exists(self.file_path):
            with open(self.file_path, 'rb') as file:
                existing_data = pickle.load(file)
            # 确保现有数据是一个列表
            if not isinstance(existing_data, list):
                raise ValueError("现有数据不是列表类型，无法追加")
            existing_data.append(timestamped_data)
        else:
            existing_data = [timestamped_data]

        # 保存合并后的数据
        with open(self.file_path, 'wb') as file:
            pickle.dump(existing_data, file)
        print(f"数据已追加并保存到 {self.file_path} 文件中")

    def load_from_pickle(self):
        """
        从pickle文件中加载数据
        :return: 加载的数据
        """
        if os.path.exists(self.file_path):
            with open(self.file_path, 'rb') as file:
                data = pickle.load(file)
            print(f"从 {self.file_path} 文件中加载的数据: {data}")
            return data
        else:
            print(f"文件 {self.file_path} 不存在")
            return []

# 示例使用
if __name__ == "__main__":
    handler = TimeStampedPickleHandler('data.pkl')  # 使用相对路径

    # 添加两条数据
    handler.save_to_pickle({'name': 'Alice', 'age': 30})
    handler.save_to_pickle({'name': 'Bob', 'age': 25})

    # 加载并打印数据
    loaded_data = handler.load_from_pickle()
    print("验证加载的数据是否正确:", loaded_data)
