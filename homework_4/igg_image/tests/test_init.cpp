#include <gtest/gtest.h>
#include "../src/igg_image/image.h"
#include "../src/igg_image/io_strategies/dummy_strategy.h"

TEST(TestImage,Constructor){
	igg::Image image;
	const std::shared_ptr<igg::DummyIoStrategy> strategy(new igg::DummyIoStrategy);
	image.SetIoStrategy(strategy);
	EXPECT_EQ(0, image.rows());
	EXPECT_EQ(0,image.cols());
}

TEST(TestImage,ConstructorWithSize)
{
	igg::Image image(300,300);
	const std::shared_ptr<igg::DummyIoStrategy> strategy(new igg::DummyIoStrategy);
	image.SetIoStrategy(strategy);
	EXPECT_EQ(300,image.rows());
	EXPECT_EQ(300,image.cols());
}
