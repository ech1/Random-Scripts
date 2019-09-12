class Parrot:
	species = "bird"
	def __init__(self,name,age):
		self.name = name
		self.age = age

	def sing(self, song):
		return "{} sings {}".format(self.name, song)

	def dance(self):
		return "{} is now dancing".format(self.name)


blu = Parrot("Blu",10)
woo = Parrot("Woo",15)

print("Blu is a {}".format(blu.__class__.species))
print("Woo is a {]".format(woo.__class__.species))

print("{} is {} years old".format(blu.name, blu.age))
print("{} is {} years old".format(woo.name, woo.age))
