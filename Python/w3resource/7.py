def main():
	print()
	a = input("Enter a filename : ")
	print(a)

	extension = a.split(".") #extension becomes a list : [ 'satan' , 'c' ]
	print(extension)	 #this shows the list -------------^
	print("the extension is : " + repr(extension[-1])) # now we pick the LAST item 'c'

if __name__ == '__main__':
	main()
