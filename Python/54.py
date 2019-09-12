import urllib.request
response = urllib.request.urlopen("http://www.stackoverflow.net/")
data = response.read()

# print(data) # this is retarded, prints out TOO MUCH

encoding = response.info().get_content_charset()
html = data.encode(encoding)

print(html) # whatever it works :omegalul:
