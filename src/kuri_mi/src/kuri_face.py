#!/usr/bin/env python
import rospy
#import mayfield_msgs.msg

#For lighting the chest LEDs
import termios, tty, os, time, sys, math
from std_msgs.msg import String
from mobile_base_driver.msg import ChestLeds
from mobile_base_driver.msg import Led

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
#from vision_msgs.msg import VisionCmdMsg


def light_up(frequency1, frequency2, frequency3, phase1, phase2, phase3):
	pub = rospy.Publisher('/mobile_base/commands/chest_leds', ChestLeds, queue_size = 10)
	#rospy.init_node('kuri_face')
	#rate = rospy.Rate(100)
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

def getch():
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)

        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

def check():
	letter = getch()
	if (letter == "c"):
		print("Teleop ended.")
		exit(0)

def face_cb(msg):
	#if msg:
	light_up(.3, .3, .3, 0, 2, 4)
	helo = "potato"
	# if msg:
	# 	print("I see a face!")
	# 	#print(faces)
	# 	print(frame)
	# 	pass
def run():
	#vc = VisionClient()
	#vc.activate_module(module_name=VisionClient.FACE_DETECTOR)
	#fr = FrameResults()
	node = rospy.init_node('potato')
	vs = rospy.Subscriber(
		"vision/results",
		FrameResults,
		face_cb
	)
	rospy.spin()
	 # while not rospy.is_shutdown():
		# try:

		# 	#face_cb()
		# 	#print("_____")
		# 	#ospy.spin()

		# 	#check()
		# 	#ccccccrospy.spin()
		# 	time.sleep(1)
		# 	rate.sleep()
			
		# except:
		# 	pass

if __name__ == '__main__':
	run()