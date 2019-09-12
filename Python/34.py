#Searching for an element

alist = [0,1,2,3,4,5,6,7,8,9]
print(5  in alist) # true
print(10 in alist) # false

atuple = ('0', '1', '2', '3', '4')
print(4   in atuple) # false
print('4' in atuple) # true

astring = 'i am a string nigger'
print('a'  in astring) # true
print('am' in astring) # true
print('I'  in astring) # false

aset = {(10,10),(20,20),(30,30)}
print((10,10) in aset) # true
print(10      in aset) # false

adict = {0:'a' , 1:'b' , 2:'c' , 3:'d'}
print(1 in adict)		#True - searches in keys
print('a' in adict)		#False
print(2 in adict.keys())	#True - searches in keys
print('a' in adict.values())	#True - searches in values
print((0,'a') in adict.items())	#True - searches key/value pairs
