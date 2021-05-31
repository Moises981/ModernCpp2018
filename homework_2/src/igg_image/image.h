#pragma once
#include <string>
#include <vector>


namespace igg {

	class Image {

  public:
  ///////////////////// Create the public interface here ///////////////////////
  Image(){};
  Image(int rows, int cols) : rows_{rows}, cols_{cols} {};
  int rows() const { return rows_; };
  int cols() const { return cols_; };
  int& at(int row, int col) { return data_[col + row * cols_]; };
  const int& at(int row, int col) const { return data_[col + row * cols_]; };
  bool FillFromPgm(const std::string& file_name);
  void WriteFromPgm(const std::string& file_name);
	std::vector<float> ComputeHistogram(int bins) const;
	void UpScale(int scale);
	void DownScale(int scale);

  private:
  int rows_ = 0;
  int cols_ = 0;
  int max_val_ = 255;
  std::vector<int> data_;

};

}  // namespace igg
