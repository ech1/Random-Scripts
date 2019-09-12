import turtle, time, random

turtle.speed(0)
turtle.colormode(255)
turtle.pensize(4)

def triangle(size):
	turtle.forward(size)
	turtle.right(90)
	turtle.forward(size)
	turtle.right(135)
	turtle.forward(size *1.5)

while(1):
	turtle.setpos(  random.randint(-200,200),random.randint(-200,200))
	turtle.pencolor(random.randint(1,255),   random.randint(1,255),random.randint(1,255))
	triangle(random.randint(1,200))
	turtle.pencolor(random.randint(1,255), random.randint(1,255), random.randint(1,255))
