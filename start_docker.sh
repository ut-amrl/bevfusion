#!/bin/bash
docker run -it \
    -v `pwd`:/home/bevfusion \
    --shm-size 16g bevfusion \
