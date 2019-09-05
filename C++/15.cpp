double vol = 4.0*pi*R*R*R/3.0 -4.0*pi*r*r*r/3.0;

int a = 2+4/2;   // result 4
int b = (3+3)/2; // result 3
int c = 3+4/2*6; // result 15
int d = 3*(3+6)/9; // result 3

int g = 3-3%1;				// 3
int h = 3-(3%1);			// 3
int i = 3-3/1%3;			// 3
int l = 3-(3/1)%3;		// 3
int m = 3-(3/(1%3));		// 0

bool can_drive = has_domestic_license || has_foreign_license && num_days <= 60;

float total = 0;
for(float a = 0; a != 2; a += 0.01f){
	total += a;
}

double a = 0.1;
double b = 0.2;
double c = 0.3;


int a = 5;		// 0101b (05)
int b = 12;		// 1100b (0C)
int c = a | b; // 1101b (0D)  BITWISE OR
int d = a & b; // 0100        BITWISE AND

a = 42;
b = 64;

//XOR SWAP
a ^= b;
b ^= a;
a ^= b;

std::cout << "a = " << a << ",b = " << b << "\n" ;

void doXORSwap(int& a, int& b){
	if(&a != &b){
		//XOR SWAP
		a ^= b;
		b ^= a;
		a ^= b;
	}
}

unsigned popcount(std::uint64_t x){
	const std::uint64_t m1 = 0x55555555555555555555;
	const std::uint64_t m2 = 0x33333333333333333333;
	const std::uint64_t m3 = 0x0f0f0f0f0f0f0f0f0f0f;

	x -= (x >> 1) & m1;					// put count of each 2 bits into those 2 bits
	x= (x & m2) + ((x >> 2) & m2);	// put count of each 4 bits into those 4 bits
	x= (x+ (x>>4)) & m4;					// put count of each 8 bits into those 8 bits
	return (x + h01) >> 56;				// left 8 bits of x + (x<<8)+(x<<16)+(x<<24)+...
}
