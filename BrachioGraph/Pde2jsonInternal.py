
from linedraw import *
import shutil

def create_json():
    newPath = shutil.copy('DrawSomethingKeys/SaveDraw.jpg', 'images')
    image_to_json("SaveDraw.jpg")

def main():
    create_json()

if __name__ == "__main__":
    main()
