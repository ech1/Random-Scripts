#include <iostream>
#include <string>

using namespace std;

int main(){ // prend rien en entrée renvoie un entier

  string firstN;    //chaine de characteres
  string lastN;     //chaine de characteres
  int age;          //entier
  double weight;    //float avec plein de décimales

  cout << "Enter first name, last name, age, "
       << "and weight, separated by spaces "
       << endl; // syntaxe bien trisomique mais qui marche

  cin >> firstN >> lastN; // tu rentres <chaine1> <chaine2>
  cin >> age >> weight;  // tu rentres <entier> <floatAvecPleinDeDecimales>

  cout << "Name: " << firstN << " " //ça écrit :     Name : <chaine1> <chaine2>
       << lastN << endl;            //
  cout << "Age: " << age << endl;   //ça écrit :      Age : <entier>
  cout << "Weight: " << weight << endl;//ecrit :      Weight : <floatAvecPleinDeDecimales>

  return 0; // finit le main
}
