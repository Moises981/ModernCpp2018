#include "ppm_strategy.h"
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include "strategy.h"

namespace igg {

bool PpmStrategy::Write(const std::string& file_name,
			const ImageData& data) const {
  std::ofstream output_file(file_name, std::ofstream::out);
  // ### HEADER ###
  output_file << "P3" << std::endl;
  output_file << "#Custom PPM Library" << std::endl;
  output_file << data.cols << " " << data.rows << std::endl;
  output_file << data.max_val << std::endl;
  // MAIN LOOP
  for (size_t row_it = 0; row_it < data.rows; row_it++) {
    for (size_t col_it = 0; col_it < data.cols; col_it++) {
      output_file << data.data[0][col_it + row_it * data.cols] << " "
		  << data.data[1][col_it + row_it * data.cols] << " "
		  << data.data[2][col_it + row_it * data.cols] << std::endl;
    }
    output_file << std::endl;
  }
  output_file.close();

  if (data.data.empty()) {
    return true;
  } else {
    return false;
  }
}

ImageData PpmStrategy::Read(const std::string& file_name) const {
  // Input file
  std::ifstream input_file(file_name, std::ifstream::in);
  // ImageData Object
  ImageData image;
  // Temporal Variables
  std::string line;
  int r;
  int g;
  int b;
  std::vector<int> blue;
  std::vector<int> green;
  std::vector<int> red;
  int header_line = 0;

  // Main Loop
  if (input_file.is_open()) {
    std::cout << "### Reading ppm Image ###" << std::endl;
    while (getline(input_file, line)) {
      std::stringstream ss(line);
      // ### HEADER ###
      // 0: Format
      // 1: Comment
      // 2: Resolution
      // 3: Max Value
      if (header_line == 0) {
	std::cout << "Format: " << line << std::endl;
	header_line++;
	continue;
      } else if (header_line == 1) {
	std::cout << "Comment: " << line << std::endl;
	header_line++;
	continue;
      } else if (header_line == 2) {
	ss >> image.cols >> image.rows;
	std::cout << "Resolution: " << image.cols << "x" << image.rows
		  << std::endl;
	header_line++;
	continue;
      } else if (header_line == 3) {
	ss >> image.max_val;
	std::cout << "Max value: " << image.max_val << std::endl;
	header_line++;
	continue;
      }

      // Get RGB Values
      while (ss >> b >> g >> r) {
	blue.emplace_back(b);
	green.emplace_back(g);
	red.emplace_back(r);
      }
    }
    image.data.reserve(3);
    image.data.emplace_back(blue);
    image.data.emplace_back(green);
    image.data.emplace_back(red);
    input_file.close();
  }
  return image;
}
}  // namespace igg

