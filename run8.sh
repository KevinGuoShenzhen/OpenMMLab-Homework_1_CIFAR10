#!/bin/bash
# 加载模块
module load anaconda/2021.05
module load cuda/11.1
module load gcc/7.3

# 激活环境
source activate opennmmlab_mmclassification


# 刷新⽇志缓存
export PYTHONUNBUFFERED=1

# 训练模型
python tools/train.py /HOME/scz0bdm/run/mmclassification/configs/resnet50/resnet50_8xb32_in1k.py --work-dir work
