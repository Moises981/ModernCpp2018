#include "digit_counting.h"
#include <cmath>
#include <iostream>

namespace digit_counting {
double Warp(double number, double factor) {
  number += factor;
  number -= factor;
  return number;
}

int CountSameSignificantDigits(double a, double b) {
  // Input should be between -1 and 1
  if (a > 1 && b > 1){
		std::cout << "Input should be between -1 and 1 range" << std::endl; 
    return 0;
	}
  else if (a > 1 || b > 1){
    return -1;
	}

  // Sign of variables
  short int sign_a = a / std::fabs(a);
  short int sign_b = b / std::fabs(b);

  // Comparate signs
  if (sign_a != sign_b) {
    return -2;
  }

  a = std::fabs(a);
  b = std::fabs(b);

  int significant_count = 0;

  for (int i = 0; i < 100; i++) {
    // Iterate over the significant digits of the double variable
    // => ? After a new Iteration
    // -> ? So
    // Example : 0.143 -> num_a = 1 => num_a = num_a = 4 => 3
    double a_times = a * 10.0;
    double b_times = b * 10.0;
    int num_a = static_cast<int>(a_times);
    int num_b = static_cast<int>(b_times);

    // Count the same significant digits
    if (num_a != num_b) break;

    // Add one significant digit
    significant_count++;

    // Substract significant digit from variable
    // Example: 0.143 -> a = (1.43-1) => a = (4.3 -4)
    a = a_times - static_cast<double>(num_a);
    b = b_times - static_cast<double>(num_b);
  }

  return significant_count;
}

bool ReturnTrue() { return true; }

}  // namespace digit_counting
