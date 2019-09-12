from requests.auth 	      import AuthBase
from requests.auth	      import _basic_auth_str
from requests._internal_utils import to_native_string

class CustomAuth(AuthBase):
	def __init__(self, secret_header, user_agent, username, password):
		self.secret_header = secret_header
		self.user_agent = user_agent
		self.username = username
		self.password = password
	def __call__(self, r):
		r.headers['X-Secret'] 	   = self.secret_header
		r.headers['User-Agent']    = self.user_agent
		r.headers['Authorization'] = _basic_auth_str(self.username, self.password)
		return r

foo = get('http://test.com/admin',auth=CustomAuth('SecretHeader','CustomUserAgent','user','password'))
print(foo)
