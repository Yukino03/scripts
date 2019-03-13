import sys
import cv2
import numpy as np
from mylib import read_img

def merge_img(path1,path2):
  left = read_img.read_img(path1)
  right = read_img.read_img(path2)
  return cv2.hconcat([left,right])
if __name__ == "__main__":
  args = sys.argv
  if len(args) >= 3:
    img = merge_img(args[1],args[2])
    cv2.imwrite("test1.jpg",img)
  else :
    print("Argument error.")
