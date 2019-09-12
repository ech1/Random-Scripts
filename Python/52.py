import urllib.request

print(urllib.request.urlopen("http://stackoverflow.com/documentation/"))
response = urllib.request.urlopen("http://stackoverflow.com/documentation/")

print(response.code)
#print(response.read()) #nani the fuck is this, don't type this LOL
