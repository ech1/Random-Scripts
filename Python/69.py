class Cash(object):
	def __init__(self,value):
		self.value = value

	@property
	def formatted(self):
		return '${:.2f}'.format(self.value)

	@formatted.setter
	def formatted(self, new):
		self.value = float(new[1:])

wallet = Cash(1000000)
print(wallet.formatted) #horatio xd
print(wallet.value)

