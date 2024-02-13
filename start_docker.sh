#!/bin/bash
docker run -it \
    -v `pwd`:/home/bevfusion \
    -v /scratch/arthurz/public_datasets/nuscenes:/home/bevfusion/data/nuscenes \
    -v /robodata/arthurz/EcoCAR/bevfusion/pretrained/bevfusion-det.pth:/home/bevfusion/data/checkpoint \
    --shm-size 16g bevfusion \
