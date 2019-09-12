from bs4 import BeautifulSoup

data= """
<div>
	<label>Name:</label>
	John Smith
</div>
"""

# boy i havent listened to that album in ages <3

soup = BeautifulSoup(data, "html.parser")
label = soup.find("label", text="Name:")
print(label.next_sibling.strip())
