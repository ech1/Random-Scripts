class IntCon(object):
	def __init__(self,value):
		self.value = value
	def __repr__(self):
		return "{}({})".format(self.__class__.__name__,self.value)
	def __lt__(self,other):
		return self.value < other.value
	def __le__(self,other):
		return self.value <= other.value
	def __gt__(self,other):
		return self.value > other.value
	def __ge__(self,other):
		return self.value >= other.value
	def __eq__(self,other):
		return self.value == other.value
	def __ne__(self,other):
		return self.value != other.value

alist = [IntCon(5),IntCon(3),IntCon(10),IntCon(7)]
res = max(alist)
print(res)
res = min(alist)
print(res)
res = sorted(alist)
print(res)
res = sorted(alist, reverse=True)
print(res)
