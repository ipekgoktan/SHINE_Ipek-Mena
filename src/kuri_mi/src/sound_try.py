#!/usr/bin/env python
import rospy

#For lighting the chest LEDs
import termios, tty, os, time, sys, math
from std_msgs.msg import String

SOUNDS_LOC = "sounds/blip.wav"

def play_sound():
	command = ['mplayer', '-slave', '-quiet', '-novideo', '-ao', 'alsa', SOUNDS_LOC]
	with open(os.devnull, 'w') as DEVNULL:
		process = subprocess.Popen(command, stdin=subprocess.PIPE, stdout=DEVNULL, stderr=subprocess.PIPE, preexec_fn=os.setsid)

def run():
	node = rospy.init_node('potato_sub')

	vs = rospy.Subscriber(#subscriber for vision sensor
		"speak"
		String
		play_sound
	)


	print("Listening to sound :)")
	rospy.spin()

if __name__ == '__main__':
	print("Kuri face detection started")
	run()