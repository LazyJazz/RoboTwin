#!/bin/bash

task_name=${1}
task_config=${2}
expert_data_num=${3}
gpu_id=${4}

bash collect_data.sh ${task_name} ${task_config} ${gpu_id}

cd policy/DP

bash process_data.sh ${task_name} ${task_config} ${expert_data_num}
bash train.sh ${task_name} ${task_config} ${expert_data_num} 0 14 ${gpu_id}
bash eval.sh ${task_name} demo_clean ${task_config} ${expert_data_num} 0 ${gpu_id}

cd ../..
