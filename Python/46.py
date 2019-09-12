import argparse
parser = argparse.ArgumentParser()
parser.add_argument('name',help='name of user')

# we don't need no education
# we don't need much control
# <3

parser.add_argument('-g', '--greeting',default='Fuck off',help='optional alternate greeting')
args = parser.parse_args()

print("{greeting},{name}!".format(greeting=args.greeting, name=args.name))

