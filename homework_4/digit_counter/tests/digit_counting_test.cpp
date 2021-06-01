#include<gtest/gtest.h>
#include<digit_counting/digit_counting.h>
#include <cmath>

TEST(DigitCountTest,Wrap){
	double factor = 1e17;
	double value = 3.141519265;
	double value_warped = digit_counting::Warp(value,factor);
	EXPECT_FALSE(std::fabs(value) < 1e-2);
}

TEST(DigitCountTest,SignificantEqual){
	double v1 = 0.1234567;
		double v2 = 0.1234567;
	EXPECT_EQ(100,digit_counting::CountSameSignificantDigits(v1,v2));
}
