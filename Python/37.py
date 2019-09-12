def getKeysForValue(dictionary, value):
	foundkeys = []
	for keys in dictionary:
		if dictionary[key] == value:
			foundkeys.append(key)
	return foundkeys

def getKeys2(dictionary,value):
	return [key for key in dictionary if dictionary[key] == value]

adict = {'a':10 , 'b':20 , 'c':10}
print(getKeysForValue(adict,10))	# ['c' , 'a']
print(getKeys2(adict,10))		# ['c' , 'a']
print(getKeys2(adict,20))		# ['b']
print(getKeys2(adict(25))		# []
#wutevs it works lol
