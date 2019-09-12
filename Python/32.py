class Parrot:
	def fly(self):
		print("I can fly")
	def swim(self):
		print("I cant swim")

class Penguin:
	def fly(self):
		print("I cant fly")
	def swim(self):
		print("I can swim")

def flying_test(bird):
	bird.fly()

blu = Parrot()
woo = Penguin()

flying_test(blu)
flying_test(woo)
