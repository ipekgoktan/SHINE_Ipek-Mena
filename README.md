# SHINE_Ipek-Mena
## by: Ipek Goktan and Mena Hassan

### Audio:
* When specifying the location of your sound file on Kuri, instead of calling your location variable sounds/filename.wav, you must provide the full path of your sound file on Kuri. 
* In order to avoid Kuri beeping continuously while you call the function to play the sound (as opposed to playing just once), add an if-else statement that only plays a sound when the publisher switches from False to True (instead of only working when it is True)
* Kuri's sound files can be found at: /opt/gizmo/share/assets/sounds/
* When pulling data from a publisher that is a String msg, access and compare the String by using msg.data (instead of just msg)
