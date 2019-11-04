from brachiograph import BrachioGraph
from Pde2jsonInternal import *

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)

GPIO.setup(23, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(8, GPIO.OUT)

flag = GPIO.PWM(8, 50)

flag.start(2.5)

# initialize the BrachioGraph
bg = BrachioGraph(inner_arm=8, outer_arm=9.5,
				  bounds=[-10, 3, 6, 12],
				  pw_up=1100, pw_down=800)

while True:
	button_state = GPIO.input(23)
	if button_state == False:
		create_json()
		bg.plot_file("images/SaveDraw.jpg.json")
		flag.changeDutyCycle(7.5)
		time.sleep(4)
