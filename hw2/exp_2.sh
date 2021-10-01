#!/bin/bash

for batch in 100
do
    for lr in 4e-2
    do
        python cs285/scripts/run_hw2.py --env_name InvertedPendulum-v2 \
        --ep_len 1000 --discount 0.9 -n 100 -l 2 -s 64 -b $batch  -lr $lr -rtg \
        --exp_name "q2_b${batch}_r${lr}"
    done
done