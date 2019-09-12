class sparselist(object):
	def __init__(self,size):
		self.size = size
		self.data = {}

	def __getitem__(self,index):
		if index < 0:
			index += self.size
		if index >= self.size:
			raise IndexError(index)
		try:
			return self.data[index]
		except KeyError:
			return 0.0

	def __setitem__(self, index, value):
		self.data[index] = value

	def __delitem__(self,index):
		if index in self.data:
			del self.data[index]

	def __contains__(self,value):
		return value == 0.0 or value in self.data.value()

	def __len__(self):
		return self.size()

	def __iter__(self):
		return(self[i] for i in range(self.size))

l = sparselist(10 ** 6) # list with fucking 1 MILLION elements
print(0 in l) 		# true
print(10 in l)		# false

l[12345] = 10
print(10 in l)		# true
print(l[12345])		# 10

#fuck this
