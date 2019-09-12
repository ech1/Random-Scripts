from bs4 import BeautifulSoup
import requests

res  = requests.get('https://www.codechef.com/problems/easy')
page = BeautifulSoup(res.text, 'lxml')

datatable_tags = page.select('table.dataTable')
datatable      = datatable_tags[0]

prob_tags  = datatable.select('a > b')
prob_names = [tag.getText().strip() for tag in prob_tags]

print(prob_names) # this outputs alot of crap lol
