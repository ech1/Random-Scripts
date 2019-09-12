def or_(a,b):
    if a:
        return a
    else:
        return b

def and_(a,b):
    if not a:
        return a
    else:
        return b

def counter():
    num = 0
    def incrementer():
        num += 1
        return num
    return incrementer

c = counter()



x = 'Hi nigger !'

def read_x():
    print(x)

read_x() # prints 'Hi nigger !'




def change_global_x():
    x = 'Bye'
    print(x)

change_global_x() # prints 'Bye'
print(x)          # prints 'Hi'


def change_global_x():
    global x
    x = 'Bye'
    print(x)

change_global_x() # prints 'Bye'
print(x)          # prints 'Bye'
