unsigned long long l1 = 1844674407309550592ull; //
unsigned long long l2 = 18; //
unsigned long long l3 = 1844; //
unsigned long long l4 = 184467'440737'0'95505'92LLU; // C++14

bool ok = true;
if(!f()){
	ok = false;
	goto end;
}

bool ok2 = true;
if (!f()){
	ok = false;
	goto end;
}

void f(int* p);
template <class T>
void g(T* p);
void h(std::nullptr_t p);

int main(){
	f(nullptr); // ok
	g(nullptr); // error
	h(nullptr); // ok
}
