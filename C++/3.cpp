#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using namespace std;
int main(){
  int age = 70;
  int ageLExam = 16;
  bool notintox = true;

  if((age >= 1) && (age < 16)){
    cout << "You cannot drive " << endl;
  } else if(!notintox){
    cout << "you cant drive either nigger" << endl;
  } else if(age >= 80 && ((age > 100) || ((age-ageLExam) > 5))){
    cout << "ok fuck off old man" << endl;
  } else {
    cout << "you can drive nigga <3" << endl;
  }

  return 0;
}
