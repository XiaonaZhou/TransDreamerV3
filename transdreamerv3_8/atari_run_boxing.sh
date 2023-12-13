#!/bin/bash
#conda remove -n dreamerv3 --all
source activate dreamerv3_8_0
nvidia-smi --query-gpu=timestamp,name,pci.bus_id,driver_version,temperature.gpu,utilization.gpu,utilization.memory,memory.total,memory.free --format=csv -l 60 > $SLURM_JOBID.img.gpu.log &
echo ${SLURM_STEP_GPUS:-$SLURM_JOB_GPUS}
 
 
CUDA_VISIBLE_DEVICES=3 python dreamerv3/train.py \
  --logdir /data/datasets/xzhou1/dreamers/TDV3_logdir/atari_boxing \
  --configs atari --task atari_boxing

