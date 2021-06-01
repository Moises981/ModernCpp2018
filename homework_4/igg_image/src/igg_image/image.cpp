#include "image.h"
#include <iostream>
#include "io_strategies/strategy.h"
#include <memory>

namespace igg {

void Image::UpScale(int scale) {
  // Rows and Colummns extended
  int col_extended = cols_ * scale;
  int row_extended = rows_ * scale;
  // Data extended
  std::vector<Pixel> data_extended;
  // Reserve space
  data_extended.reserve(col_extended * row_extended);
  // Iterator
  for (int row_it = 0; row_it < rows_; row_it++) {
    for (int row_fill = 0; row_fill < scale; row_fill++) {
      for (int col_it = 0; col_it < cols_; col_it++) {
	for (int coll_fill = 0; coll_fill < scale; coll_fill++) {
	  data_extended.emplace_back(data_[col_it + cols_ * row_it]);
	}
      }
    }
  }
  data_.clear();
  data_.assign(data_extended.begin(), data_extended.end());
  cols_ = col_extended;
  rows_ = row_extended;
  std::cout << "Resolution: " << cols_ << "x" << rows_ << std::endl;
}

void Image::WriteToDisk(const std::string& file_name) {
  // Set Image Properties
  ImageData image;
  image.cols = cols_;
  image.rows = rows_;
  image.max_val = max_val_;
  // Temporal variables
  std::vector<int> red;
  std::vector<int> green;
  std::vector<int> blue;
	red.reserve(cols_*rows_);
	green.reserve(cols_*rows_);
	blue.reserve(cols_*rows_);
  // Iterator
  for (Pixel pixel : data_) {
    red.emplace_back(pixel.red);
    green.emplace_back(pixel.green);
    blue.emplace_back(pixel.blue);
  }
  image.data.emplace_back(red);
  image.data.emplace_back(green);
  image.data.emplace_back(blue);
  io_strategy_->Write(file_name, image);
}

bool Image::ReadFromDisk(const std::string& file_name) {
	
  // Read Image
  const ImageData& img = io_strategy_->Read(file_name);
  // Verify Image
  if (img.data.empty()) return false;
  // Set properties
  cols_ = img.cols;
  rows_ = img.rows;
  for (size_t it = 0; it < img.data[0].size(); it++) {
    Pixel pixel{img.data[0][it], img.data[1][it], img.data[2][it]};
    data_.emplace_back(pixel);
  }
  return true;
}

void Image::DownScale(int scale) {
  // Rows and Colummns compressed
  int col_compressed = cols_ / scale;
  int row_compressed = rows_ / scale;
  // Data compressed
  std::vector<Pixel> data_compressed;
  // Reserve space
  data_compressed.reserve(col_compressed * row_compressed);
  // Iterator
  for (int row_it = 0; row_it < row_compressed; row_it++) {
    for (int col_it = 0; col_it < col_compressed; col_it++) {
      // Example:
      // *** Input ***
      // Row: 0     Col:0
      // ***Data***
      // Rows: 512   Cols:512
      // DownScale: 2
      // Row_c: 5  Col_c: 3
      // (Col_c + Cols * Row_c) * DownScale
      // (  5   +  512 *   5  ) * 2 => 5130
      data_compressed.emplace_back(data_[(col_it + cols_ * row_it) * scale]);
    }
  }

  data_.clear();
  data_.assign(data_compressed.begin(), data_compressed.end());
  cols_ = col_compressed;
  rows_ = row_compressed;
  std::cout << "Resolution: " << cols_ << "x" << rows_ << std::endl;
}
}  // namespace igg
