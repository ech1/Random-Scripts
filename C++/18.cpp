int arrayofINTS[5] = {10,20,30,40,50};
int arrayofINTS2[] = {1,2,3,4,5,6,7,8,9,77,88,99,100};

char arrayofCHARS[5] = { 'a','b','c','d','e'}
double arrayofDoubles[5] = {1.14159,2.14159,3.14159,4.14159,5.14159}

string arrayOfStrings[6] = {"C++","is","super","duper","great!"};

#include <iostream>
#include <iomanip>
using namespace std;

auto main() -> int
{
	int const n_rows = 3;
	int const n_cols = 7;
	int const m[n_rows][n_cols] ={
		{ 1, 2, 3, 4, 5, 6, 7},
		{ 8, 9,10,11,12,13,14},
		{15,16,17,18,19,20,21}
	};
	for(int y = 0; y < n_rows; ++y){
		for(int x = 0; x < n_cols; ++x){
			cout << setw( 4 ) << m[y][x];
		}
		cout << '\n';
	}
}
