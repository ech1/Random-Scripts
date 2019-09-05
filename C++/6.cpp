#include <iostream>
#include <stream>

using namespace std;  // je sais pas ce que c'est mais faut le mettre

int main(){ // fonction main qui renvoie un entier, et prend rien en entrée
  int num1,num2;
  double sale;
  char first;
  string str;

  num1 = 4;
  cout << "num1 = " << num1 << endl; // affiche num1 = 4

  num2 = 4*5 - 11;
  cout << "num2 = " << num2 << endl; // num2 = 9

  sale = 0.02 * 1000;
  cout << "sale = " << sale << endl; // sale = 20

  first = 'D';
  cout << "first = " << first << endl; // first = D

  str = "It is a sunny day.";
  cout << "str = " << str << endl;// str = It is a sunny day

  return 0; // termine la fonction int main()
}
