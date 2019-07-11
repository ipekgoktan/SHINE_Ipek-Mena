import time
import sys
import termios, tty, os, time
def run():
	def getch():
        fd = sys.stdin.fileno()
        old_settings = termios.tcgetattr(fd)
        try:
            tty.setraw(sys.stdin.fileno())
            ch = sys.stdin.read(1)

        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
        return ch

	arr = [[0] * 15 for i in range(3)]
	print(arr[0])

if __name__ == '__main__':
    run()