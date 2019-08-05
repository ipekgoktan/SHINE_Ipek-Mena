# SHINE_Ipek-Mena (Interaction Lab)
## by: Ipek Goktan and Mena Hassan

### General:
* When working with Gerald, remember to source catkin_ws before launching kuri_edu
* Our main "demo code" is kuri_sound.py

### Guide to kuri_sound demo code:
* q- turn on rainbow
* p- turn off rainbow
* r, g, b- red, green blue chest colors
* o- toggle for touch (turns pink and makes sound when touched)
* t- toggle for turn (turns to people when it sees their face)
* a- toggle for chase (turns to people and approaches them when it sees their face)
* c- exit program

### Audio:
* When specifying the location of your sound file on Kuri, instead of calling your location variable sounds/filename.wav, you must provide the full path of your sound file on Kuri. 
* In order to avoid Kuri beeping continuously while you call the function to play the sound (as opposed to playing just once), add an if-else statement that only plays a sound when the publisher switches from False to True (instead of only working when it is True)
* Kuri's sound files can be found at: /opt/gizmo/share/assets/sounds/
* When pulling data from a publisher that is a String msg, access and compare the String by using msg.data (instead of just msg)

### Life Hacks by Ipek & Mena:)
#### Things we learned from our mistakes
* Run and write your code locally, not on Kuri
* Source EVERYTHING
* Always check your chmod and cmake
* Import all necessary nodes
* Additionally declare gobal variables within Python functions
* Use online resources, kuri documentation, and ROS documentation whenever possible
* Make sure everything is plugged in
* Use multithreading when functions may be interfering with each other
* Don't create everything within the same Python file
* Import everything in vision_msgs.msg when using face detection
* If you are getting strange errors, check your CMakeLists.txt and package.xml files
* git push and pull everything!
* When in doubt, print(":)") it out
* If nothing here works, turn Kuri off and on again
