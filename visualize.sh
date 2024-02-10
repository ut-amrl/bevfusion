#!/bin/bash
python setup.py develop
pip install opencv-python-headless
torchpack dist-run -np 8 python tools/visualize.py configs/nuscenes/det/transfusion/secfpn/camera+lidar/swint_v0p075/convfuser.yaml --mode gt --checkpoint /robodata/arthurz/EcoCAR/bevfusion/pretrained/bevfusion-det.pth --split val
python img_to_vid.py