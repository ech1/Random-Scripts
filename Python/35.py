class ListList:
	def __init__(self, value):
		self.value = value
		self.setofvalues = set(item for sublist in self.value for item in sublist)
		#wtf is this lol

	def __iter__(self):
		print('Using __iter__')
		return(item for sublist in self.value for item in sublist)
		#again, wtf is this

	def __contains__(self,value):
		print('Using __contains__')
		return value in self.setofvalues

a = ListList( [ [1,1,1], [0,1,1], [1,5,1] ] )
print(10 in a) # false
print( 5 in a) # true
del ListList.__contains__
print( 5 in a) # Still true !!
