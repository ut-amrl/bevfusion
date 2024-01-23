#!/bin/bash
docker run -it \
    -v `pwd`:/home/bevfusion \
    -v /robodata/public_datasets/nuscenes/can_bus:/home/nuscenes/can_bus \
    -v /robodata/public_datasets/nuscenes/lidarseg:/home/nuscenes/lidarseg \
    -v /robodata/public_datasets/nuscenes/nuScenes-map-expansion-v1.2:/home/nuscenes/nuScenes-map-expansion-v1.2 \
    -v /robodata/public_datasets/nuscenes/nuScenes-panoptic-v1.0-all:/home/nuscenes/nuScenes-panoptic-v1.0-all \
    -v /robodata/public_datasets/nuscenes/nuscenes-devkit:/home/nuscenes/nuscenes-devkit \
    -v /robodata/public_datasets/nuscenes/samples:/home/nuscenes/samples \
    -v /robodata/public_datasets/nuscenes/sweeps:/home/nuscenes/sweeps \
    -v /robodata/public_datasets/nuscenes/v1.0-mini:/home/nuscenes/v1.0-mini \
    -v /robodata/public_datasets/nuscenes/v1.0-test:/home/nuscenes/v1.0-test \
    -v /robodata/public_datasets/nuscenes/v1.0-trainval:/home/nuscenes/v1.0-trainval \
    -v /robodata/arthurz/EcoCAR/bevfusion_dataset_mnts/nuscenes/nuscenes_infos_train.pkl:/home/nuscenes/nuscenes_infos_train.pkl \
    -v /robodata/arthurz/EcoCAR/bevfusion_dataset_mnts/nuscenes/nuscenes_infos_val.pkl:/home/nuscenes/nuscenes_infos_val.pkl \
    -v /robodata/arthurz/EcoCAR/bevfusion_dataset_mnts/nuscenes/nuscenes_infos_test.pkl:/home/nuscenes/nuscenes_infos_test.pkl \
    -v /robodata/arthurz/EcoCAR/bevfusion_dataset_mnts/nuscenes/nuscenes_dbinfos_train.pkl:/home/nuscenes/nuscenes_dbinfos_train.pkl \
    --shm-size 16g bevfusion \
    /bin/bash -c 'ln -s /home/nuscenes /home/bevfusion/data/nuscenes; exec /bin/bash'