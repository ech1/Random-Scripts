class Foo(object):
	def __init__(self):
		self.__bar = None

	@property
	def bar(self):
		if self.__bar is None:
			self.__bar = 42
		return self.__bar

foo = Foo()
print(foo.bar)
