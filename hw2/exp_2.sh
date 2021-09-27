#!/bin/bash

# python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v2 \
# --ep_len 1000 --discount 0.9 -n 100 -l 2 -s 64 -b 100 -lr 1e-2 -rtg \
# --exp_name q2_b100_r1e-2

for batch in 10 100 500 1000
do
    for lr in 5e-3 1e-2 5e-2 1e-1
    do
        python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v2 \
        --ep_len 1000 --discount 0.9 -n 100 -l 2 -s 64 -b $batch  -lr $lr -rtg \
        --exp_name "q2_b${batch}_r${lr}"
    done
done