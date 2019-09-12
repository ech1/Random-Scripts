class adder(object):
	def __init__(self, first):
		self.first = first

	def __call__(self,second):
		return self.first + second

add2 = adder(2)
print(add2(1)) # 3
print(add2(2)) # 4

class NotAddable(object):
	def __init__(self, value):
		self.value = value
	def __add__(self,other):
		return NotImplemented

class Addable(NotAddable): #wtf does that line even mean lol
	def __add__(self,other):
		return Addable(self.value + other.value)

	__radd__ = __add__

x = NotAddable(1)
y = Addable(2)
print(y + x) # <__main__.Addable object at 0xSomething>
