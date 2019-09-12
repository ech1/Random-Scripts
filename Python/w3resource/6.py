def main():
	print()
	a = input("enter a sequence of numbers")

	print(a)

	numbers1 = list(map(int, a.split()))
	numbers2 = tuple(map(int,a.split()))
	print("List : ",numbers1)
	print("Tuples : ",numbers2)

if __name__ == '__main__':
	main()
