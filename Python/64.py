from requests import post

foo = post('http://httpbin.org/post', data= {'key':'value'})
print(foo)
print(foo.headers)
print(foo.encoding)
print(foo.url)
print(foo.history) # empty list :shrug:

files = {'file' : open('data.txt', 'rb')}
foo = post('http://http.org/post' ,file= files)
