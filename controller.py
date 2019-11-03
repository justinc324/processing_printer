from BrachioGraph.brachiograph import BrachioGraph
#from linedraw import *

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)

GPIO.setup(23, GPIO.IN, pull_up_down=GPIO.PUD_UP)

def initialize():
	bg = BrachioGraph(inner_arm=8, outer_arm=9.5, bounds=[-14, 1, 10, 15])

while True:
	button_state = GPIO.input(23)
	if button_state == False:
		initialize()
		time.sleep(1)
