from moviepy.editor import *

def color_clip(size, duration, fps=25, color=(0,0,0), output='color.mp4'):
    ColorClip(size, color, duration=duration).write_videofile(output, fps=fps)

if __name__ == '__main__':
    size = (800, 450)
    duration = 10
    color_clip(size, duration)