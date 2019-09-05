struct S {
	int x;
	S& operator=(const S& other){
		x = other.x;
		return *this;
	}
}

struct S;
struct T {
	T(const S* s);
	// ...
};
struct S {
	//...
	T t{this};
};
