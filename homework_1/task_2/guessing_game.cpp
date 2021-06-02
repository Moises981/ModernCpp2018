#include <ctime>
#include <iostream>
#include <limits>

int main() {
  int randomNumber;
  int number;
  // Generate random number
  srand(time(0));
  randomNumber = rand() % 99 + 1;

  std::cout << randomNumber;
  std::cout << "Rules: \n Try to guess the random number \n If you guess the "
	       "number you won \n Else you lose"
	    << std::endl;
  while (true) {
		//Input 
    std::cout << "Choose a random number between 0 and 99" << std::endl;
    std::cin >> number;
		//Check type Integer
    if (!std::cin) {
      std::cout << "Wrong input , Enter only integers" << std::endl;
      std::cin.clear();
			std::cin.ignore(std::numeric_limits<std::streamsize>::max(),'\n');
      continue;
    }
		//Check if the number was guessed
    if (number > randomNumber) {
      std::cout << "Your number is larger than the random number" << std::endl;
    } else if (number < randomNumber) {
      std::cout << "Your number is shorter than the random number" << std::endl;
    } else {
      std::cout << "Congratulations" << std::endl;
      break;
    }
		std::system("clear");
  }
}
