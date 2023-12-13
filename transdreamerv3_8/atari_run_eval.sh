#!/bin/bash
#conda remove -n dreamerv3 --all
#source activate dreamerv3
nvidia-smi --query-gpu=timestamp,name,pci.bus_id,driver_version,temperature.gpu,utilization.gpu,utilization.memory,memory.total,memory.free --format=csv -l 60 > $SLURM_JOBID.img.gpu.log &
echo ${SLURM_STEP_GPUS:-$SLURM_JOB_GPUS}
 
 
CUDA_VISIBLE_DEVICES=6 python dreamerv3/train.py \
  --logdir ~/logdir/atari_eval \
  --configs atari --run.script eval_only --run.from_checkpoint ~/logdir/atari_run1/checkpoint.ckpt

