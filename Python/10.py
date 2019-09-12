a,b,c,d,e=3,2,2.0,-3,10
print( a/b )
print( a/c )
print( d/b )
print( b/a )
print( d/e )

import operator
operator.div(a,b) # = 1
operator.__div__(a,b) # = 1

from __future__ import division
print(a/b)   # 1.5
print(a // b)# 1
print(a % b) # 0.5

from operator import truediv
truediv(a,b)
