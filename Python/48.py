import getpass
import sys

words = sys.argv[1:]
sentence = " ".join(words)
print("[%s] %s" % (getpass.getuser(), sentence))

argv = reversed(sys.argv)
arg = argv.pop()
while len(argv) > 0:
	if arg   in ('-f', '--foo'):
		print('seen foo!')
	elif arg in ('-b', '--bar'):
		print('seen bar!')
	elif arg in ('-a', '--with-arg'):
		print('seen value: {}'.format(arg))
	arg = argv.pop()


#yeah it works lol
