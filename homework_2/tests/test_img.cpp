#include <gtest/gtest.h>
#include <igg_image/image.h>
#include <iostream>
#include <vector>

TEST(TestImageResolution,Constructor) {
  igg::Image img(512, 512);
  EXPECT_EQ(512, img.cols());
  EXPECT_EQ(512, img.rows());
}

TEST(TestImageResolution,LoadingFile){
	igg::Image img;
	std::string path = "/home/pc/Homework_cpp/homework_2/data/lena.ascii.pgm";
	EXPECT_EQ(true,img.FillFromPgm(path));
}
