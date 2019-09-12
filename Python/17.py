nterms = 10

n1 = 0
n2 = 1
count = 0

if nterms <= 0:
	print("Please enter a positive integer")
elif nterms == 1:
	print("Fibo sequence upto", nterms, ":")
	print(n1)
else:
	print("Fibo sequence upto", nterms,":")
	while count < nterms:
		print(n1, end=' , ')
		nth = n1 + n2
		#update values
		n1 = n2
		n2 = nth
		count += 1
