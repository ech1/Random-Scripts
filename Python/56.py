from selenium import webdriver

browser = webdriver.Firefox()

browser.get('http://stackoverflow.com/questions?sort=votes') #loads url

title     = browser.find_element_by_css_selector('h1').text
questions = browser.find_elements_by_css_selector('.question-summary')

for question in questions:
	question_title   = question.find_element_by_css_selector('.summary h3 a').text
	question_excerpt = question.find_element_by_css_selector('.summary .excerpt').text
	question_vote	 = question.find_element_by_css_selector('.stats .vote .votes .vote-count-posts').text
	print("%s\n%s\n%s votes\n-------\n" % (question_title,question_excerpt,question_vote))

#supposed to work so rip lol

