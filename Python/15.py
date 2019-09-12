a = 'global'

class Fred:
    a = 'class'  # in class scope
    b = (a for i in range(10)) # function scope
    c = [a for i in range(10)] # function scope
    d = a # class scope
    e = lambda: a # function scope
    f = lambda a=a: a # class scope

    @staticmethod #or @classmethod
    def g():
        return a

print(Fred.a)     #class
print(next(Fred.b)) #global
print(Fred.c[0]) # class in python2, global in python3

print(Fred.d) # class
print(Fred.e()) # global
print(Fred.f()) # class
print(Fred.g()) # global


foo = 1
def func():
    bar = 2
    print(foo) # prints foo from global
    print(bar) # prints bar from local

def func2():
    bar2 = 4
    print(globals().keys()) #prints all var names from global
    print(locals.keys())    #prints all var names from local (here)

foo = 111
def func3():
    foo = 123
    print(globals()['foo']) #prints 111
    print(locals()['foo'])  #prints 123


#page 108 : Comparaisons
