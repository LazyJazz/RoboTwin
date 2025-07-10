#!/bin/bash

task_name=${1}
task_config=${2}
expert_data_num=${3}
ckpt_num=${4}
gpu_id=${5}

bash eval.sh ${task_name} demo_test_seen ${task_config} ${expert_data_num} 0 ${ckpt_num} ${gpu_id}
bash eval.sh ${task_name} demo_test_unseen ${task_config} ${expert_data_num} 0 ${ckpt_num} ${gpu_id}
bash eval.sh ${task_name} demo_clean ${task_config} ${expert_data_num} 0 ${ckpt_num} ${gpu_id}
