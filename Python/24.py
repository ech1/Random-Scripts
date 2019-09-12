str = 'adhazhdahzdjahzkjdazhdkjakjdazkhdad864az5d4a56d5az64d5a64d65az'
str = str.casefold()

reversed_str = reversed(str)
if list(str) == list(reversed_str):
	print("its a palindrome")
else:
	print("its not a palindrome")
