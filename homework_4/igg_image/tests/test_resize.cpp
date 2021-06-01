#include "../src/igg_image/image.h"
#include <gtest/gtest.h>
#include <string>

TEST(TestResize,ScaleDown){
	igg::Image image;
	const std::shared_ptr<igg::PpmStrategy> strategy(new igg::PpmStrategy);
	image.SetIoStrategy(strategy);
	std::string path = "/home/pc/ModernCpp2018/homework_3/data/pbmlib.ascii.ppm";
	EXPECT_TRUE(image.ReadFromDisk(path));
	int rows = image.rows()/2;
	int cols = image.cols()/2;
	image.DownScale(2);
	EXPECT_EQ(rows,image.rows());
	EXPECT_EQ(cols,image.cols());
	image.WriteToDisk("/home/pc/ModernCpp2018/homework_3/data/pbmlib.ascii.ScaledDown.ppm");
}

TEST(TestResize,ScaleUp){
	igg::Image image;
	const std::shared_ptr<igg::PpmStrategy> strategy(new igg::PpmStrategy);
	image.SetIoStrategy(strategy);
	std::string path = "/home/pc/ModernCpp2018/homework_3/data/pbmlib.ascii.ppm";
	EXPECT_TRUE(image.ReadFromDisk(path));
	int rows = image.rows()*2;
	int cols = image.cols()*2;
	image.UpScale(2);
	EXPECT_EQ(rows,image.rows());
	EXPECT_EQ(cols,image.cols());
	image.WriteToDisk("/home/pc/ModernCpp2018/homework_3/data/pbmlib.ascii.ScaledUp.ppm");
}
