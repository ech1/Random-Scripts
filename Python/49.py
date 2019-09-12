class BuildSphinx(Command):
	""" Build Sphinx documentation. """
	description = 'Build sphinx documentation'
	user_options = [] # that's a list

	def initialize_options(self):
		pass
	def finalize_options(self):
		pass
	def run(self):
		import sphinx
		sphinx.build_main(['setup.py','-b','html','./doc','./doc/_build/html'])
		sphinx.build_main(['setup.py','-b','man' ,'./doc','./doc/_build/man'])

cmdclasses['build_sphinx'] = BuildSphinx

#in commandline:
#python setup.py build_sphinx
