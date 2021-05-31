#include "image.h"
#include "io_tools.h"
#include <iostream>


int main(){
	igg::Image image;
	std::string path_filename = "/home/pc/Homework_cpp/homework_2/data/lena.ascii.pgm";
	image.FillFromPgm(path_filename);
	std::vector<float> histogram = image.ComputeHistogram(2);


	for(size_t i=0;i<histogram.size();i++){
		std::cout<<"Bin "<<i<<" :"<<histogram[i]<<std::endl;
	}
	
	image.DownScale(10);
	image.UpScale(10);
	std::string out_filename = "/home/pc/Homework_cpp/homework_2/data/lena.ascii.compressed.pgm";

	image.WriteFromPgm(out_filename);

}
