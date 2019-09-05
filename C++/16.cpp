std::bitset<5> num(std::string("01100"));
num.set(0);
num.set(2);
num.set(4,true);

number &= ~(1LL << w);
std::bitset<5> num(std::string("01100"));
num.reset(2);
num.reset(0);
num.set(3,false);

int main(){
	char op1 = 'a';
	int mask = 0xDF;
	printf("a (AND) mask = A\n");
	printf("%c & 0xDF = %c\n", op1, op1 & mask);
	return 0;
}


// $g++ 16.cpp -o test1
// $./test1
