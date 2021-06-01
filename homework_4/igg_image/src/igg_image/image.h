// Copyright Igor Bogoslavskyi, year 2018.
// In case of any problems with the code please contact me.
// Email: igor.bogoslavskyi@uni-bonn.de.

#pragma once

#include <memory>
#include <vector>
#include "io_strategies/png_strategy.h"
#include "io_strategies/ppm_strategy.h"
#include "io_strategies/strategy.h"

namespace igg {

class Image {
  public:
  /// A struct within class Image that defines a pixel.
  struct Pixel {
    int red;
    int green;
    int blue;
  };

  // TODO: fill public interface.
  Image(){};
  Image(int rows, int cols) : rows_{rows}, cols_{cols} {};
  void SetIoStrategy(const std::shared_ptr<IoStrategy>& strategy_ptr){io_strategy_ = strategy_ptr;};
  int cols() const { return cols_; };
  int rows() const { return rows_; };
  Pixel& at(int row, int col) { return data_[col + cols_ * row]; };
  const Pixel at(int row, int col) const { return data_[col + cols_ * row]; };
  void DownScale(int scale);
  void UpScale(int scale);
  bool ReadFromDisk(const std::string& file_name);
  void WriteToDisk(const std::string& file_name);

  private:
  // TODO: add missing private members when needed.
  std::shared_ptr<IoStrategy> io_strategy_ = nullptr;
  int rows_ = 0;
  int cols_ = 0;
  int max_val_ = 255;
  std::vector<Pixel> data_;
};

}  // namespace igg
