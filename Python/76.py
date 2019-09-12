class Shape:
	def calculate_area(self):
		return "negros"

class Square(Shape):
	side_length = 2
	def calculate_area(self):
		return self.side_length * 2

class Triangle(Shape):
	base_length = 4
	height = 3
	def calculate_area(self):
		return 0.5 * self.base_length * self.height

def get_area(input_obj):
	"""
	accepts input object's calculate_area()
	object type is NOT specified here.
	It can be Square, Triangle or Shape object.
	"""
	print(input_obj.calculate_area())


shape_obj = Shape()
square_obj = Square()
triangle_obj = Triangle()

get_area(shape_obj)    # negros
get_area(square_obj)   # 4
get_area(triangle_obj) # 6.0
