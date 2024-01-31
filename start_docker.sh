#!/bin/bash
docker run -it \
    -v `pwd`:/home/bevfusion \
    -v /scratch/arthurz/public_datasets/nuscenes:/home/bevfusion/data/nuscenes \
    --shm-size 16g bevfusion \
