adict = {'a':3 , 'b':5 , 'c':1}
print(min(adict))
print(max(adict))
print(sorted(adict))
print()
print(min(adict.items()))
print(max(adict.items()))
print(sorted(adict.items()))

class MC(object):
	def __init__(self,value,name):
		self.value = value
		self.name = name
	def __lt__(self,other):
		return self.value < other.value
	def __repr__(self):
		return str(self.name)

print(sorted([MC(4,'first'), MC(1,'second'), MC(4,'third')])) # Output: [second,first,third]
print(   max([MC(4,'first'), MC(1,'second'), MC(4,'third')])) # Output: first
