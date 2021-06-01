#include <iostream>

int main() {
  // Char : 1 byte
  // 1e3 Bytes : 1KB
  int step = 100 * 1000 * sizeof(char);
  int size = step;
  while (true) {
		std::cerr << "Size is : " << size << std::endl;
    double arr[size];
		size+=step;
		// Stack Limit aros 7812 KB
		std::cerr << "Size in KB is: "<< sizeof(arr)/1024 << std::endl;
  }
}
