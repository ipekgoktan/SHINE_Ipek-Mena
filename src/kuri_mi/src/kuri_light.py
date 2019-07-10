#!/usr/bin/env python
import rospy
import sys
import termios, tty, os, time
#import mobile_base_driver.msg

from std_msgs.msg import String
from mobile_base_driver.msg import ChestLeds
from mobile_base_driver.msg import Led

def run():
    pub = rospy.Publisher('/mobile_base/commands/chest_leds', ChestLeds, queue_size = 10)
    rospy.init_node('kuri_light')
    rate = rospy.Rate(100)
    l = ChestLeds()

    print("Light Program Started")

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
    rainbowStart = True

    while not rospy.is_shutdown():
        try:
            letter = getch()
            if (letter == "r"):
                print("___you pressed red")
                for i in range(len(l.leds)):
                    l.leds[i].red = 255
                    l.leds[i].green = 0
                    l.leds[i].blue = 0
                    #print( l.leds[i])

                time.sleep(button_delay)
            if (letter == "g"):
                print("___you pressed green___")
                for i in range(len(l.leds)):
                    l.leds[i].red = 0
                    l.leds[i].green = 255
                    l.leds[i].blue = 0
                    #print( l.leds[i])

                time.sleep(button_delay)
            if (letter == "b"):
                print("___you pressed blue___")
                for i in range(len(l.leds)):
                    l.leds[i].red = 0
                    l.leds[i].green = 0
                    l.leds[i].blue = 255
                    #print( l.leds[i])

                time.sleep(button_delay)

            if(letter == "q"):
                for i in range(len(l.leds)):
                    l.leds[i].red = 255
                    l.leds[i].green = 0
                    l.leds[i].blue = 0

                while(l.leds[i].red > 0):
                    for i in range(len(l.leds)):
                                l.leds[i].red = l.leds[i].red - 20
                                l.leds[i].green = l.leds[i].green + 20
                                time.sleep(0.1)
                                
                                if (letter == "c"):
                                    print("Teleop ended.")
                                    exit(0)
                                pub.publish(l)
                while(l.leds[i].green > 0):
                    for i in range(len(l.leds)):
                                l.leds[i].green = l.leds[i].green - 20
                                l.leds[i].blue = l.leds[i].blue + 20
                                time.sleep(0.1)
                                if (letter == "c"):
                                    print("Teleop ended.")
                                    exit(0)
                                pub.publish(l)
                while(l.leds[i].blue > 0):
                    for i in range(len(l.leds)):
                                l.leds[i].blue = l.leds[i].blue - 20
                                l.leds[i].red = l.leds[i].red + 20
                                time.sleep(0.1)
                                if (letter == "c"):
                                    print("Teleop ended.")
                                    exit(0)
                                pub.publish(l)


            if (letter == "c"):
                print("Teleop ended.")
                exit(0)

            
            pub.publish(l)
            rate.sleep()
        except:
            pass


if __name__ == '__main__':
    run()