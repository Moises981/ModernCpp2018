#include "image.h"
#include <iostream>
#include "io_tools.h"


namespace igg {

bool Image::FillFromPgm(const std::string &file_name) {
  io_tools::ImageData img_data = io_tools::ReadFromPgm(file_name);
  if (img_data.data.size() > 0) {
    rows_ = img_data.rows;
    cols_ = img_data.cols;
    max_val_ = img_data.max_val;
    data_.assign(img_data.data.begin(), img_data.data.end());
    std::cout << "Reading file ..." << std::endl;
    return true;
  }
  return false;
}

void Image::WriteFromPgm(const std::string &file_name) {
  io_tools::ImageData img;
  img.cols = cols_;
  img.rows = rows_;
  img.max_val = max_val_;
  img.data.assign(data_.begin(), data_.end());
  io_tools::WriteToPgm(img, file_name);
}


void Image::UpScale(int scale) {
  // Rows and Colummns extended
  int col_extended = cols_ * scale;
  int row_extended = rows_ * scale;
  // Data extended
  std::vector<int> data_extended;
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
	data_.assign(data_extended.begin(),data_extended.end());
	cols_ = col_extended;
	rows_ = row_extended;
	std::cout<<"Resolution: "<<cols_<<"x"<<rows_<<std::endl;
}

void Image::DownScale(int scale) {
  // Rows and Colummns compressed
  int col_compressed = cols_ / scale;
  int row_compressed = rows_ / scale;
  // Data compressed
  std::vector<int> data_compressed;
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
	std::cout <<"Resolution: "<<cols_<<"x"<<rows_<<std::endl;
}

std::vector<float> Image::ComputeHistogram(int bins) const {
  // Histogram Vector
  std::vector<float> histogram;
  // Reserve memory
  histogram.reserve(bins);
  // Interval of bins
  float interval = static_cast<float>(max_val_) / bins;
  // Iterator
  for (int i = 0; i < bins; i++) {
    // Counter
    int pixelCount = 0;
    for (auto it = data_.begin(); it != data_.end(); it++) {
      // Count between interval := Example(2 bins) 0-127 127-255
      if (*it > interval * i && *it < interval * (i + 1)) pixelCount++;
    }
    histogram.emplace_back(pixelCount);
  }
  return histogram;
}

}  // namespace igg

