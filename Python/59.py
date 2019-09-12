from subprocess import Popen, PIPE
from lxml import etree
from io import StringIO

user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, likeGecko) Chrome/55.0.2883.95 Safari/537.36'

url = 'http://stackoverflow.com'
get = Popen(['curl', '-s', '-A', user_agent, url], stdout=PIPE)
result = get.stdout.read().decode('utf8')

tree = etree.parse(StringIO(result), etree.HTMLParser())
divs =  tree.xpath('//div')

print(tree)   # <lxml.etree._ElementTree object at 0xSomething>
print(divs)   # empty list []
print(result) # html header
