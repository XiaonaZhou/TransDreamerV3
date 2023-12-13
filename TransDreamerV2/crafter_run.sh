#!/bin/bash
#conda remove -n dreamerv3 --all
source activate trans_dreamer
nvidia-smi --query-gpu=timestamp,name,pci.bus_id,driver_version,temperature.gpu,utilization.gpu,utilization.memory,memory.total,memory.free --format=csv -l 60 > $SLURM_JOBID.img.gpu.log &
echo ${SLURM_STEP_GPUS:-$SLURM_JOB_GPUS}
 
 
CUDA_VISIBLE_DEVICES=7 python main.py --config-file config_files/configs_crafter.py
