if __name__ == '__main__':
	try:
		import requests
	except ImportError:
		print("To use this module you need 'requests' module")
		t = input('InstallRequests? y/n:')
		if t == 'y':
			import pip
			pip.main(['install','requests'])
			import requests
			import os
			import sys
			pass
		else:
			import os
			import sys
			print('Some functionality can be unavailable.'=
	else:
		import requests
		import os
		import sys
