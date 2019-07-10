#!/usr/bin/env python
import rospy
import termios, tty, os, time, sys, math
#import mobile_base_driver.msg

from std_msgs.msg import String
from mobile_base_driver.msg import ChestLeds
from mobile_base_driver.msg import Led

def getch():
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)

        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

def rainbow(frequency1, frequency2, frequency3, phase1, phase2, phase3):
    pub = rospy.Publisher('/mobile_base/commands/chest_leds', ChestLeds, queue_size = 10)
    rospy.init_node('kuri_light')
    rate = rospy.Rate(100)
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

def run():
    pub = rospy.Publisher('/mobile_base/commands/chest_leds', ChestLeds, queue_size = 10)
    rospy.init_node('kuri_light')
    rate = rospy.Rate(100)
    l = ChestLeds()

    print("Light Program Started")
    for i in range(len(l.leds)):
        l.leds[i].red = 255
        l.leds[i].green = 255
        l.leds[i].blue = 255
    button_delay = 0.2

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
                rainbow(.3, .3, .3, 0, 2, 4)


            if (letter == "c"):
                print("Teleop ended.")
                exit(0)

            
            pub.publish(l)
            rate.sleep()
        except:
            pass


if __name__ == '__main__':
    run()