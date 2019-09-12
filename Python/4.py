#print(dir(__builtins__))
#print("*********************************************************")
import math
#print(dir(math))

def sayHello():
    """this is the function docstring."""
    return 'Hello World !'

print(sayHello())

import datetime
today = datetime.datetime.now()
print(str(today))
print(repr(today))

class Represent(object):
    def __init__(self, x,y):
        self.x,self.y = x,y
    def __repr__(self):
        return "Represent(x={}, y=\"{}\")".format(self.x,self.y)
    def __str__(self):
        return "Representing x as {} and y as {}".format(self.x,self.y)

r = Represent(1, "Nigger")
print('Voici r',r)

rep = r.__repr__()
print(rep)

r2 = eval(rep)
print('Voici r2',r2)

print('r2 == r ???',r2 == r,'Parceque ce sont 2 objets differents ')

#####PAGE 50########
