#!/usr/bin/env python
import rospy

#For lighting the chest LEDs
import termios, tty, os, time, sys, math
from std_msgs.msg import String
from mobile_base_driver.msg import ChestLeds
from mobile_base_driver.msg import Led

#from geometry_msgs.msg import HeadClient
#For face detection
from vision_msgs.msg import FrameResults
from vision_msgs.msg import Face
from vision_msgs.msg import FaceArray
from vision_msgs.msg import ImageClustering
from vision_msgs.msg import DetectedObjects
from vision_msgs.msg import DetectedObjects
from vision_msgs.msg import ClassifiedObjects
from vision_msgs.msg import ClassifiedObject
from vision_msgs.msg import ImageQuality
from vision_msgs.msg import ObjectFeatures
#For body movement
from geometry_msgs.msg import Twist
from mobile_base_driver.msg import Touch
#For playing sounds
import os
import subprocess

#Head pan, tilt and eye movements are all within Head Client object

SOUNDS_LOC = "Downlads/blip.wav" #add .wav file to location

def happy():
	pub = rospy.Publisher('/mobile_base/commands/chest_leds', ChestLeds, queue_size = 10)
	l = ChestLeds()
	for i in range(len(l.leds)):
		l.leds[i].red = 255
		l.leds[i].green = 20
		l.leds[i].blue = 147
	pub.publish(l)

def white():
	pub = rospy.Publisher('/mobile_base/commands/chest_leds', ChestLeds, queue_size = 10)
	l = ChestLeds()
	for i in range(len(l.leds)):
		l.leds[i].red = 255
		l.leds[i].green = 255
		l.leds[i].blue = 255
	pub.publish(l)

def rainbow(frequency1, frequency2, frequency3, phase1, phase2, phase3):
	pub = rospy.Publisher('/mobile_base/commands/chest_leds', ChestLeds, queue_size = 10)
	l = ChestLeds()

	print("kuri rainbow working")
	center = 128;
	width = 127;
	length = 50;

	for i in range(length):
		for p in range(len(l.leds)):
			l.leds[p].red = math.sin(frequency1*i + phase1) * width + center;
			l.leds[p].green = math.sin(frequency2*i + phase2) * width + center;
			l.leds[p].blue = math.sin(frequency3*i + phase3) * width + center;
			pub.publish(l)
		time.sleep(0.1)

def pub_sound(can_speak):
	pub = rospy.Publisher('speak', String, queue_size=10)
	if(can_speak):
		pub.publish("Yes")
		print("pub yes")
	else:
		pub.publish("No")
	time.sleep(0.1)

def play_sound():
	command = ['mplayer', '-slave', '-quiet', '-novideo', '-ao', 'alsa', SOUNDS_LOC]
	with open(os.devnull, 'w') as DEVNULL:
		process = subprocess.Popen(command, stdin=subprocess.PIPE, stdout=DEVNULL, stderr=subprocess.PIPE, preexec_fn=os.setsid)

def chase_user(): #moves forwards until face is at certain size limit
	pub = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size = 10)
	m = Twist()
	m.angular.z = 0
	m.linear.x = 0.7
	pub.publish(m)

def turn_x(x): #turns towards user to center face
	pub = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size = 10)
	m = Twist()
	print("turning started")

	if x < 0.4:
		m.linear.x = 0
		m.angular.z = 0.2
	elif x > 0.6:
		m.linear.x = 0
		m.angular.z = -0.2
	pub.publish(m)
	if(x > 0.4 and x < 0.6):
		chase_user()
		print("user is centered")
		return(True)
	
def getch(): #real time key input
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)

        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

def touch_cb(msg):
	if msg:
		#print(msg)
		for i in range(len(msg.electrodes)):
			if(msg.electrodes[i]):
				#print("I am being touched")
				happy()
				pub_sound(True)
			else:
				white()
				#ub_sound(False)

def face_cb(msg): #face sensor callback
	helo = "potato"
	if msg.faces.faces:
		#print(msg.faces.faces[0].size)
		print("I see a face!")
		turn_x(msg.faces.faces[0].center.x)
		#rainbow(.3, .3, .3, 0, 2, 4)
		hello = "hi"
	 	
def run():
	node = rospy.init_node('potato')

	vs = rospy.Subscriber(#subscriber for vision sensor
		"vision/results",
		FrameResults,
		face_cb
	)


	ts = rospy.Subscriber(#subscriber for touch sensors
		"/mobile_base/touch", 
		Touch, 
		touch_cb
	)

	print("face detection program")
	print(FrameResults)
	rospy.spin()

if __name__ == '__main__':
	print("Kuri face detection started")
	run()