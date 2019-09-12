from bs4 import BeautifulSoup

data = """
<ul>
	<li class="item">nigger1</li>
	<li class="item">nigger2</li>
	<li class="item">nigger3</li>
</ul>
"""

soup = BeautifulSoup(data, "html.parser")

for item in soup.select("li.item"):
	print(item.get_text())
