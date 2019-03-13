import sys
import numpy as np
import cv2

def read_img(path):
  return cv2.imread(path)
  
if __name__ =="__main__":
  args = sys.argv
  if len(args) >= 2:
    img = read_img(args[1])
    cv2.imwrite("test1.jpg",img)
  else :
    print("Argument error.")
