#include <iostream>
#include <vector>
#include <string>
#include <fstream>
// les include que faut pas oublier sinon ça pue
using namespace std;

int main(){ // notre fonction main prend rien en entrée, et renvoie un entier
  cout << "Hello World" << endl;    // affiche Hello World

  const double PI = 3.1415926535;   // un float avec plein de decimales
  char myGrade = 'A';               // Une lettre (charactere)
  bool isHappy = true;              // une valeur booléenne (vrai/faux)
  int myAge = 39;                   // un entier (1 2 3 4 5 6 7 8 9)
  float favNum = 3.141592;          // un float avec des decimales mais pas trop
  double otherfavNum = 1.6180339887;// autre float avec plein de decimales

  cout << "Favorite Number : " << favNum << endl;
  cout << "Size of int : " << sizeof(myAge) << endl;
  cout << "Size of char : " << sizeof(myGrade) << endl;
  cout << "Size of bool : " << sizeof(isHappy) << endl;
  cout << "Size of float : " << sizeof(favNum) << endl;
  cout << "Size of double : " << sizeof(otherfavNum) << endl; //affiche la taille

  int largestInt = 2147483647;
  cout << "Largest int " << largestInt << endl; // affiche Largest Int 2147483647
  cout << endl;

  cout << " 5 + 2 = " << 5+2 << endl;
  cout << " 5 - 2 = " << 5-2 << endl;
  cout << " 5 * 2 = " << 5*2 << endl;
  cout << " 5 / 2 = " << 5/2 << endl;
  cout << " 5 % 2 = " << 5%2 << endl; //affiche 5 % 2 = quelquechose
  cout << endl;

  int five = 5;
  cout << "5++ = " << five++ << endl;
  cout << "++5 = " << ++five << endl;
  cout << "5-- = " << five-- << endl;
  cout << "--5 = " << --five << endl; //affiche le resultat de 5 = 5-1
  cout << endl;

  cout << "1+2-3 * 2 = " << 1+2-3 * 2 << endl;
  cout << "(1+2-9)*2 = " << (1+2-9)*2 << endl; //affiche que c'est pas trivial l'ordre d'opérations
  cout << endl;

  cout << "        4 / 5 = " << 4 / 5  << endl;
  cout << "(int)   4 / 5 = " << (int) 4 / 5  << endl;
  cout << "(float) 4 / 5 = " << (float) 4 / 5  << endl;
  cout << "(char)  4 / 5 = " << (char) 4 / 5  << endl; // transforme le resultat en char

  return 0; // termine le main.
}



// To compile the program, just type this in terminal :
// g++ -std=c++11 1.cpp
// and then ./a.out
