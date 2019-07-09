#!/usr/bin/env python
import rospy
import sys
import termios, tty, os, time

from geometry_msgs.msg import Twist
from std_msgs.msg import String


def run():
    pub = rospy.Publisher('/mobile_base/commands/velocity', Twist, queue_size = 10)
    rospy.init_node('kuri_move')
    rate = rospy.Rate(10)
    m = Twist()

    print("Program Started")
    
    def getch():
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)

        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

    button_delay = 0.2
    
    while not rospy.is_shutdown():
        try:
            letter = getch()
            if (letter == "w"):
                m.angular.z = 0
                m.linear.x = 1
                time.sleep(button_delay)
            if (letter == "d"):
                m.linear.x = 0
                m.angular.z = -1
                time.sleep(button_delay)
            if (letter == "s"):
                m.angular.z = 0
                m.linear.x = -1
                time.sleep(button_delay)
            if (letter == "a"):
                m.linear.x = 0
                m.angular.z = 1
                time.sleep(button_delay)

            if (letter == "c"):
                print("Teleop ended.")
                exit(0)

            pub.publish(m)
            rate.sleep()
        except:
            pass


if __name__ == '__main__':
    run()