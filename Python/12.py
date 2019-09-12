a,b=1,2
import math
import cmath

print(math.sin(a))
print(math.cosh(b))
print(math.atan(math.pi))
print(math.hypot(a,b)) # pareil que math.sqrt(a*a + b*b)

print(math.degrees(a)) #convertis a radiants en degrés
print(math.radians(57.299577)) #convertis 57 degrés en radians

a = a + 1
a = a * 2

a += 1
a *= 2

#logarithmes
math.log(5) # = 1.609
math.log(5, math.e) #pareil

#module : le RESTE de la division des deux nombres
print(3 % 4)  # 3 car il y a pas 4 dans 3
print(10 % 2) # 0 car il y a deux 5 dans 10
print(6 % 4)  # 2 car il y a UN 4 dans 6, et le reste est 2

print(-9 % 7) # 5
print(9 % -7) # -5
print(-9 % -7) # -2
