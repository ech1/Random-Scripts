def greet(name, greeting):
    """Print a greetng to the user `name`
        Optional parameter 'greeting' can change what they're greeted with"""
    print("{} {}".format(greeting, name))


greet(input("Quel est ton prenom ?"),input("Et on dit quoi ?"))
greet("Salope","Bonjour")
int(input("rentre un entier"))
float(input("rentre un float"))

from datetime import datetime, timedelta, timezone
JST = timezone(timedelta(hours=+9))
dt = datetime(2015, 1, 1, 12, 0, 0)
print(dt)
print(dt.tzname())

dt = datetime(2015, 1, 1, 12, 0, 0)
print(dt.tzname)

now = datetime.now()
print(now)
later = datetime(2019, 9, 1)
print(later)
before = datetime(1999, 1, 2, 12, 30 ,59)
print(before)
