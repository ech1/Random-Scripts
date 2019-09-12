class Duck:
	def quack(self):
		print("Quack nigger!")
	def feathers(self):
		print("Duck's white and gray feathers.")

class Nigger:
	def quack(self):
		print("The nigger imitates a duck")
	def feathers(self):
		print("The nigger shows feathers")
	def name(self):
		print("John Cena")

def in_the_forest(obj):
	obj.quack()
	obj.feathers()

Donald = Duck()
Alex = Nigger()

in_the_forest(Donald)
in_the_forest(Alex)
