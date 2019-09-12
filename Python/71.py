class A:
	def __init__(self,a):
		self.a = a
	def __add__(self,other):
		return self.a + other
	def __radd__(self, other):
		print("radd")

class B:
	def __init__(self,b):
		self.b = b
	def __iadd__(self,other):
		self.b += other
		print("iadd")
		return self

b = B(2)
print(b.b)
b += 1
print(b.b)
