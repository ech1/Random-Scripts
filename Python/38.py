import bisect

def index_sorted(sorted_seq, value):
	"""Locate the leftmost value exactly equal to x or ELSE : VALUEERROR NIGGER"""
	i = bisect.bisect_left(sorted_seq,value)
	if i != len(sorted_seq) and sorted_seq[i] == value:
		return i
	raise ValueError

alist = [i for i in range(1 , 100000, 3)] # sorted list from 1 to 100.000 : 1 4 7 10 13 16...
					  # boi that list is huge
print(index_sorted(alist, 97285)) # 32428
print(index_sorted(alist, 4    )) # 1
#index_sorted(alist, 97286) # doesnt exist, so ValueError
