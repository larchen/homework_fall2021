#!/bin/bash

for b in 10000 30000 50000
do
    for r in 5e-3 1e-2 2e-2
    do
        python cs285/scripts/run_hw2.py --env_name HalfCheetah-v2 --ep_len 150 \
        --discount 0.95 -n 100 -l 2 -s 32 -b $b -lr $r -rtg --nn_baseline \
        --exp_name "q4_search_b${b}_lr${r}_rtg_nnbaseline"
    done
done