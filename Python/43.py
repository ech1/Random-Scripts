import re

def is_allowed(string):
	charRE = re.compile(r'[^a-zA-Z0-9]') #matches any letter (capital or not) and any number
	string = charRE.search(string)
	return not bool(string)

print(is_allowed("abyzABYZDG5165465448451231231")) # True
print(is_allowed("#{~#[#||[`|[")) 		   # False

import regex as re
string = "Three Ks a day keeps the niggers away (I kill niggers everyday)."
rx = re.compile(r'''
	\([^()]*\) (*SKIP)(*FAIL) # match anything in parentheses and throw it away ?
	|			  # or
	nigger			  # match a nigger
	''', re.VERBOSE)
niggers = rx.findall(string)
print(niggers) #only one ?
