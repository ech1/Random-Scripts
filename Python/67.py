from requests import post
proxies = {
	'http' : 'http://192.168.0.128:3128',
	'https': 'http://192.168.0.127:1080',
	}
foo = requests.post('http://httpbin.org/post', proxies=proxies)

proxies2 = {
	'http' :'socks5://192.168.0.128:3128',
	'https':'socks5://192.168.0.127:1080',
	}
foo = requests.post('http://httpbin.org/post', proxies=proxies2)
