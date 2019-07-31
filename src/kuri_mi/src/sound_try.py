#!/usr/bin/env python
import rospy

#For lighting the chest LEDs
import termios, tty, os, time, sys, math
import subprocess
from std_msgs.msg import String

SOUNDS_LOC = "/opt/gizmo/share/assets/sounds/"
tune = "Beep4.wav"

a = "No"
b = "No"
num = 0
yes = True
count = 0

def can_play(msg):
        global yes
        global num
        global count
        print(count)
        print(msg)
        if(yes):
                play_now()
                yes = False
        else:
                print(count)
                #if(msg == "Yes"):
                count = count + 1
                print("count changed yay")
                if(msg.data == "Yes"):
                        print(">_>")
                if(count > 40):
                        yes = True
                        print(":)))))")
                        count = 0      
