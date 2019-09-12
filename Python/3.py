int_list = [1,2,3,4,5,6,7,8,9]
string_list = ['abc','def','ghi']
empty_list = []
mixed_list = [1,'abc',True,2.34,None,-6872.25]

Nested_list = [['a','b','c'],['Nani','the fuck'],111,222,333]
names = ['Alice','Bob','Craig','Diana','Eric']
print(names[0]) #Alice
print(names[2]) #Craig

print(names[-1]) # Eric
print(names[-4]) # Bob

print(names)

names[2] = 'NANI'
print(names)

names.append("UltraTheoPVP")
print(names)

names.insert(3,"EchoDu67")
print(names)

names.remove("Eric")
print(names)

print(names.index("Alice"),names.index("EchoDu67"))

print(len(names)) # la longueur de la liste

print(names)
names.reverse()
print(names)
names[::-1]
print(names)

print(names.pop())
print(names.pop())
print(names.pop())
print(names.pop())
print(names.pop())
print(names.pop()) # supprime le dernier et l'affiche

string_list = ['abc','def','ghi','klm','opq','rst','ta mere']

for element in string_list:
    print(element)

#au dessus c'est que des listes, avec des []
#en dessous c'est des tuples avec des ()

ip_address = ('10.20.30.40', 8080)
one_member_tuple = ('Only member',)

#Dictionnaires (similaire au format JSON)

state_capitals = {
    'Arkansas' : 'Little Rock',
    'Colorado' : 'Denver',
    'California' : 'Sacramento'
}

for k in state_capitals.keys():
    print('{} is the capital of {}'.format(state_capitals[k], k))

#Sets ( collection d'elements sans repetitions )
#Sans insertion, mais avec un ordre
#A utiliser quand des choses sont groupees ensembles,
#Surtout si c'est des donnees en masse,
#Faut utiliser des sets pour plus de VITESSE

#Rappel : Liste = []
#       : tuple = ()
#       : Set   = {}

first_names = {'Adam', 'Beth', 'Charlie'}
Liste = [1,2,3]
Set =  set(Liste)
name = ''
if name in first_names:
    print(name)

state_capitals['Arkansas'] = 'Little Rock 2'
state_capitals['California']  = 'Sacramento 2'

print(state_capitals)
print(first_names)
print(Set)
print(Liste)
