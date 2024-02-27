from moviepy.editor import *
from tqdm import tqdm


camera0 = VideoFileClip("viz/nuscenes_camera0.mp4").subclip(0, 10).margin(8)
camera1 = VideoFileClip("viz/nuscenes_camera1.mp4").subclip(0, 10).margin(8)
camera2 = VideoFileClip("viz/nuscenes_camera2.mp4").subclip(0, 10).margin(8)
camera3 = VideoFileClip("viz/nuscenes_camera3.mp4").subclip(0, 10).margin(8)
camera4 = VideoFileClip("viz/nuscenes_camera4.mp4").subclip(0, 10).margin(8)
camera5 = VideoFileClip("viz/nuscenes_camera5.mp4").subclip(0, 10).margin(8)
color = VideoFileClip("color.mp4").subclip(0, 10).margin(8)
lidar = VideoFileClip("viz/nuscenes_lidar.mp4").subclip(0, 10).margin(8)

combined = clips_array([[camera0.set_position("left", "top"), color.set_position("center", "top"), camera1.set_position("right", "top")], 
                               [camera2.set_position("left", "center"), lidar.set_position("center"), camera5.set_position("right", "center")],
                                 [camera4.set_position("left", "bottom"), color.set_position("center", "bottom"), camera3.set_position("right", "bottom")]])

combined.write_videofile("viz/allCams.mp4")

    