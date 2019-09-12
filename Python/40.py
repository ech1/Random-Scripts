import functools
@functools.total_ordering
class IntCon(object):
	def __init__(self,value):
		self.value = value
	def __repr__(self):
		return "{}({})".format(self.__class__.__name__,self.value)
	def __lt__(self,other):
		return self.value < other.value
	def __eq__(self,other):
		return self.value < other.value
	def __ne__(self,other):
		return self.value != other.value

print(IntCon(5) > IntCon(6)) # False
print(IntCon(6) > IntCon(5)) # True
