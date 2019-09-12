def modular_inverse(x,p):
	return pow(x, p-2, p)

[modular_inverse(x,13) for x in range(1, 13)]


def nth_root(x,n):
	upper_bound = 1
	while upper_bound ** n <= x:
		upper_bound *= 2

	lower_bound = upper_bound // 2

	while lower_bound < upper_bound:
		mid = (lower_bound + upper_bound) // 2
		mid_nth = mid ** n
		if lower_bound < mid and mid_nth < x:
			lower_bound = mid
		elif upper_bound > mid and mid_nth > x:
			upper_bound = mid
		else:
			return mid
	return mid + 1

x = 2 ** 100
cube = x ** 3
root = nth_root(cube, 3)
x == root
