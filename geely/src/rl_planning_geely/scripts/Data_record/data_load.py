from src.Learning_Based_Replanning.scripts.Data_record.picklehandle import TimeStampedPickleHandler
import math
import numpy as np
state_PATH = "Record_data/state_data.pkl"
action_PATH = "Record_data/action_data.pkl"
import matplotlib.pyplot as plt

if __name__ == "__main__":
    state_data_handler = TimeStampedPickleHandler(state_PATH)
    loaded_state_data = state_data_handler.load_from_pickle()
    action_data_handler = TimeStampedPickleHandler(action_PATH)
    loaded_action_data = action_data_handler.load_from_pickle()

    fig, ax = plt.subplots(figsize=(16, 3))
    cloud_points_xy = []
    for i in range(0,len(loaded_state_data),2):
        state = loaded_state_data[i]['data']
        for m in range(0, int(360 / 1.5)):
            angle = m * 1.5
            x = state[m] * math.cos(math.radians(angle)) * 50.0
            y = state[m] * math.sin(math.radians(angle)) * 50.0
            ax.plot(x, y, '*')
        plt.pause(0.00001)
        plt.cla()
        plt.axis('equal')
        print(i)






