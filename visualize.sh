#!/bin/bash
python setup.py develop
pip install opencv-python-headless
torchpack dist-run -np 4 python tools/visualize.py configs/nuscenes/det/transfusion/secfpn/camera+lidar/swint_v0p075/convfuser.yaml --bbox-score 0.1 --mode gtpred --out-dir viz_gt --checkpoint /home/bevfusion/data/checkpoint --split val
python img_to_vid.py