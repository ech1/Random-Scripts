int a = 1;
++a;
a--;

int minusa=-a;
bool b = true;
!b; // result: true

a = 4;
int c = a++/2;

cout << a << endl;
int d = ++a/2;

int arr[4] = {1,2,3,4};
int *ptr1 = &arr[0];
int *ptr2 = ptr1++;
std::cout << *ptr1++ << std::endl;

int e = arr[0]++;
std::cout << e << std::endl;
std::cout << *ptr2 << std::endl;
