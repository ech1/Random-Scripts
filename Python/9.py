{1,2,3,4,5}.intersection({3,4,5,6}) # 3,4,5
{1,2,3,4,5} & {3,4,5,6}

{1,2,3,4,5}.union({3,4,5,6}) #1,2,3,4,5,6
{1,2,3,4,5} | {3,4,5,6}

{1,2,3,4}.difference({2,3,5}) # 1,4
{1,2,3,4} - {2,3,5}

{1,2,3,4}.symmetric_difference({2,3,5}) # 1,4,5
{1,2,3,4} ^ {2,3,5}

{1,2}.issuperset({1,2,3}) # False
{1,2} >= {1,2,3}

{1,2}.issubset({1,2,3}) # True
{1,2} <= {1,2,3}

{1,2}.isdisjoint({3,4}) # True
{1,2}.isdisjoint({1,4}) # False

2 in {1,2,3} # true
4 in {1,2,3} # false
4 not in {1,2,3} # true

s = {1,2,3}
s.add(4)     # {1,2,3,4}
s.discard(3) # {1,2,4}
s.discard(5) # {1,2,4}
s.remove(2)  # {1,4}
s.remove(2)  # ERROR !
