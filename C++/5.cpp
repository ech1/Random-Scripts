#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using namespace std;
int main(){
  bool variable = (5<2) ? true : false;
  int largest = (5>2) ? 5 : 2;

  int myFavNums[5];
  int badNums[5]= {4, 13, 14, 24, 34};

  cout << "Bad Number 1: " << badNums[0] << endl;
  char myName[2][6] = {{'D','e','r','e','k'},
                      {'B','a','r','n','a','s'}};
  cout << "2nd letter in 2nd array" << myName[1][1] << endl;

  myName[1][1] = 'Z';
  cout << "2nd letter in 2nd array" << myName[1][1] << endl;

  for(int i = 1; i <= 10; i++){
    cout << i << endl;
  }
  for(int j = 0; j < 2; j++){
    for(int k = 0; k < 6; k++){
      cout << myName[j][k];
    }
    cout << endl;
  }

  return 0;
}
