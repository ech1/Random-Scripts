root = get_root(tree)
for node in get_children(root):
	print(get_name(node))
	for child in get_children(node):
		print(get_name(child))
		for grand_child in get_children(child):
			print(get_name(grand_child))

# A, AA, AB, B , BA, BB, BBA
