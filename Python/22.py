def recur_fibo(n):
	"""recursive func to print fibo"""
	if n <= 1:
		return n
	else:
		return(recur_fibo(n-1) + recur_fibo(n-2))

nterms= int(input("how many terms ?"))

if nterms <= 0:
	print("Please enter a positive int")
else:
	print("Fibo sequence:")
	for i in range(nterms):
		print(recur_fibo(i))
