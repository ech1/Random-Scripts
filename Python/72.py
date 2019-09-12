import math
class Vector(object):
	def __init__(self,x,y):
		self.x = x
		self.y = y
	def __neg__(self):
		return Vector(-self.x, -self.y)
	def __add__(self,other):
		return Vector(self.x + other.x, self.y + other.y)
	def __sub__(self,other):
		return self + (-other)
	def __eq__(self,other):
		return self.x == other.x and self.y == other.y
	def __abs__(self):
		return math.hypot(self.x, self.y)
	def __str__(self):
		return	'<{0.x}, {0.y}>'.format(self)
	def __repr__(self):
		return 'Vector({0.x}, {0.y})'.format(self)
v = Vector(1,4)
u = Vector(2,0)

u + v
print( u + v ) 		# <3 ,  4>
u - v
print( u - v ) 		# <1 , -4>
print(u == v)  		# False
print(u+v == v+u) 	#True
print(abs(u+v))		#5.0
