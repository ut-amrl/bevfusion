import cv2
import os
from tqdm import tqdm

frame_directory = 'viz_gt/lidar'
video_path = 'viz_gt/nuscenes_lidar.avi'
frame_rate = 10  # frames per second
resolution = (831, 831)  # Adjust based on your frame size

# Define the codec and create VideoWriter object
fourcc = cv2.VideoWriter_fourcc(*'XVID')
out = cv2.VideoWriter(video_path, fourcc, frame_rate, resolution)

print("Starting img_to_vid.py")
for frame_name in tqdm(sorted(os.listdir(frame_directory))):
    frame_path = os.path.join(frame_directory, frame_name)
    frame = cv2.imread(frame_path)
    if frame is not None:
        # Resize frame to match video resolution, if necessary
        resized_frame = cv2.resize(frame, resolution)
        out.write(resized_frame)

out.release()