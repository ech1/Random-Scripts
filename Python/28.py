import hashlib
def hash_file(filename):
	"""This function returns the SHA-1 hash"""
	h = hashlib.sha1()
	with open(filename,'rb') as file:
		chunk = 0
		while chunk != b'':
			#read only 1024 bytes at a time
			chunk = file.read(1024)
			h.update(chunk)
	#return the hex representationof digest
	return h.hexdigest()
message = hash_file("track1.mp3)
print(message)
#output 633d7356947eec543c50b76a1852f92427f4dca9

def jpeg_res(filename):
	with open(filename, 'rb') as img:
		img.seek(163)
		a = img.read(2)
		height =  (a[0] << 8) + a[1]
		a = img.read(2)
		width =   (a[0] << 8) + a[1]
	print("The resolution of the img is",width,"x",height)
jpeg_res("img1.jpg")
#output The resolution of the image is 280 x 280
