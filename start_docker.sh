#!/bin/bash
# -v /robodata/public_datasets/nuscenes/can_bus:/home/bevfusion/data/nuscenes/can_bus \
# -v /robodata/public_datasets/nuscenes/lidarseg:/home/bevfusion/data/nuscenes/lidarseg \
# -v /robodata/public_datasets/nuscenes/nuScenes-map-expansion-v1.2:/home/bevfusion/data/nuscenes/nuScenes-map-expansion-v1.2 \
# -v /robodata/public_datasets/nuscenes/nuScenes-panoptic-v1.0-all:/home/bevfusion/data/nuscenes/nuScenes-panoptic-v1.0-all \
# -v /robodata/public_datasets/nuscenes/nuscenes-devkit:/home/bevfusion/data/nuscenes/nuscenes-devkit \
# -v /robodata/public_datasets/nuscenes/samples:/home/bevfusion/data/nuscenes/samples \
# -v /robodata/public_datasets/nuscenes/sweeps:/home/bevfusion/data/nuscenes/sweeps \
# -v /robodata/public_datasets/nuscenes/v1.0-mini:/home/bevfusion/data/nuscenes/v1.0-mini \
# -v /robodata/public_datasets/nuscenes/v1.0-test:/home/bevfusion/data/nuscenes/v1.0-test \
# -v /robodata/public_datasets/nuscenes/v1.0-trainval:/home/bevfusion/data/nuscenes/v1.0-trainval \
docker run -it \
    -v `pwd`:/home/bevfusion \
    --shm-size 16g bevfusion /bin/bash