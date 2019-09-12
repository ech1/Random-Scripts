a_str = 'Hello World'
print(a_str)
print(a_str[0])
print(a_str[0:5])

#set = {} ou set('blabla')
#list = []

basket = {'apple','orange','apple','pear','orange','banana','nigger'}
print(basket) # elimine les doublons, ne montre que les uniques
a = set('abracadabra')
print(a) # ca affiche les lettres uniques dans le set a

a.add('x')
a.add('y')
a.add('z')
print(a)

# les frozen sets c'est des sets auquel tu peux rien ajouter
b = frozenset('asdfagsa')
print(b)
cities = frozenset(["Frankfurt","Basel","Freiburg"])
print(cities)

#listes

list = [12, 'abc',10.2,'D']
list1 = ['hello', 'world']
print(list)
print(list[0:2])
print(list1 * 2)
print(list + list1)

#Dictionnaries

dic = {'name':'red','age':10}
print(dic)
print(dic['name'])
print(dic.values())
print(dic.keys())

#Tuples
tuple = (123,'hello')
tuple1 = ('world')
print(tuple)
print(tuple[0])
print(tuple , tuple1)
