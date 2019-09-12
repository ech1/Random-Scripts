import re
text = 'Hey negro, You can try to find a negro in this string'
pattern = 'negr?\w' # find 'negr' either with or without a following word character

for match in re.finditer(pattern,text):
	sStart = match.start()
	sEnd = match.end()
	sGroup = match.group()
	print('Match "{}" found at: [{},{}]'.format(sGroup, sStart, sEnd))
