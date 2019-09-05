#include <iostream>
using namespace std;

class Person{
	public:
		string profession;
		int age;
		Person(): profession("unemployed"), age(16) { }
		void display()
		{
			cout << "My profession is: " << profession << endl;
			cout << "My age is :       " << age 	   << endl;
			walk();
			talk();
		}
		void walk() { cout << "I am walking." << endl; }
		void talk() { cout << "I am talking." << endl; }
};

class MathsTeacher : public Person{
	public:
		void teachMaths(){ cout << "I am teaching maths." << endl; }
};

class Footballer : public Person{
	public:
		void playFootball(){ cout << "I am playing football." << endl; }
};

int main(){
	MathsTeacher teacher;
	teacher.profession = "Teacher";
	teacher.age = 23;
	teacher.display();
	teacher.teachMaths();

	Footballer footballer;
	footballer.profession = "Footballer";
	footballer.age = 19;
	footballer.display();
	footballer.playFootball();

	return 0;
}
