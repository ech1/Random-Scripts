import urllib
query_params = {'username':'stackoverflow','password':'me.me'}
encoded_params = urllib.parse.urlencode(query_params).encode('utf-8')
response = urllib.request.urlopen("https://stackoverflow.com/users/login",encoded_params)
print(response.code)
print(response.read())

