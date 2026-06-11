import os
import torch


def find_last_checkpoint(checkpoint_dir):
    epochs = []
    for name in os.listdir(checkpoint_dir):
        if os.path.splitext(name)[-1] == '.pth':
            epochs += [int(name.strip('ckpt_epoch_.pth'))]
    if len(epochs) == 0:
        raise IOError('no checkpoint found in {}'.format(checkpoint_dir))

    return max(epochs)


def save_checkpoint(checkpoint_dir, epoch, model, optimizer=None):
    checkpoint = {}
    checkpoint['epoch'] = epoch

    if isinstance(model, torch.nn.DataParallel):
        model_state_dict = model.module.state_dict()
    else:
        model_state_dict = model.state_dict()
    checkpoint['model'] = model_state_dict

    if optimizer is not None:
        optimizer_state_dict = optimizer.state_dict()
        # for k, v in optimizer_state_dict.items():
        #     print(k, type(v))
        # optimizer_state_dict = rename_dict_key(optimizer_state_dict)
        checkpoint['optimizer'] = optimizer_state_dict
    else:
        checkpoint['optimizer'] = None

    torch.save(checkpoint, os.path.join(checkpoint_dir, 'ckpt_epoch_%02d.pth' % epoch))


def load_checkpoint(checkpoint_dir, epoch=-1):
    if epoch == -1:
        epoch = find_last_checkpoint(checkpoint_dir)
    checkpoint_name = 'ckpt_epoch_%02d.pth' % epoch
    checkpoint_path = os.path.join(checkpoint_dir, checkpoint_name)
    print("======================checkpoint_path = ", checkpoint_path)
    ckpt = torch.load(checkpoint_path, map_location='cpu')
    print("======================fdfdfdfdfddfdf = ", checkpoint_path)
    return ckpt


def save_model(checkpoint_dir, epoch, model):
    save_checkpoint(checkpoint_dir, epoch, model, optimizer=None)


def load_model(checkpoint_dir, epoch, model):
    try:
        ckpt = load_checkpoint(checkpoint_dir, epoch)
        model_state_dict = ckpt['model']
        # print("model_state_dict.keys() = ",model_state_dict.keys())

        if isinstance(model, torch.nn.DataParallel):
            model.module.load_state_dict(model_state_dict)
            print("======================load model to DataParallel")
        else:
            model.load_state_dict(model_state_dict)
            print("=======================load model to single GPU")
    except Exception as e:
        print('failed to load model, {}'.format(e))
    return model


def load_optimizer(checkpoint_dir, epoch, optimizer):
    try:
        ckpt = load_checkpoint(checkpoint_dir, epoch)
        optimizer_state_dict = ckpt['optimizer']
        optimizer.load_state_dict(optimizer_state_dict)
    except Exception as e:
        print('failed to load optimizer, {}'.format(e))
    return optimizer
