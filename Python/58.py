from urllib.request import urlopen

response = urlopen('http://stackoverflow.com/questions?sort=votes')
data = response.read()

encoding = response.info().get_content_charset()
html = data.decode(encoding)

print(html) # this prints out a html encoded file
	    # let's check it out actually
	    # huge success lel

#from terminal :
#python 58.py > nigger.html

#firefox :
#file:///home/ech0/Desktop/Coding/Python/nigger.html
