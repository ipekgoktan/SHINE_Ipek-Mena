#!/usr/bin/env python
import rospy

#For lighting the chest LEDs
import termios, tty, os, time, sys, math, subprocess
from std_msgs.msg import String

SOUNDS_LOC = "opt/gizmo/share/assets/sounds/Beep1.wav"

def play_sound(msg):
        command = ['mplayer', '-slave', '-quiet', '-novideo', '-ao', 'alsa', SOUNDS_LOC]
        with open(os.devnull, 'w') as DEVNULL:
                process = subprocess.Popen(command, stdin=subprocess.PIPE, stdout=DEVNULL, stderr=subprocess.PIPE, preexec_fn=os.setsid)
        print(":)")
        return None

def run():
        node = rospy.init_node('potato_sub')

        vs = rospy.Subscriber(#subscriber for vision sensor
                "speak",
                String,
                play_sound
        )


        print("Listening to sound :)")
        rospy.spin()

if __name__ == '__main__':
        print("Kuri face detection started")
        run()
~                                                                                                                 
~                                                                                                                 
~                                                                                                                 
~                                                                                                                 
~                               
