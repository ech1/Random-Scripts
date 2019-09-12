import re

precomp_pattern = re.compile(r"(.*\d+)")

matches = precomp_pattern.match("The answer is 41!")
print(matches.group(1)) # The answer is 41
			# (there is no !) because the regex doesnt match it

matches = precomp_pattern.match("Or was it 42?")
print(matches.group(1)) # Or was it 42
			# (there is no ?) because the regex doesnt match it

print("-------------")

m = re.search("b", "ABC")
print(m is None) # True

m = re.search("b", "ABC", flags=re.IGNORECASE)
print(m.group()) # 'B'

m = re.search("a.b", "A\nBC" , flags=re.IGNORECASE|re.DOTALL)
print(m.group()) # 'A
		 #  B'
