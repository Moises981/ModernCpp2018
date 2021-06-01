#include "igg_image/image.h"
#include "igg_image/io_strategies/strategy.h"

int main() {
	// Create Image Object from Image
  igg::Image image;
	const std::shared_ptr<igg::PpmStrategy> strategy(new igg::PpmStrategy);
	image.SetIoStrategy(strategy);	
  std::string path = "/home/pc/ModernCpp2018/homework_3/data/pbmlib.ascii.ppm";
	image.ReadFromDisk(path);

	//Set black block in Image
	for (int i = 0; i < 100; i++) {
		for (int j = 0; j < 100; j++) {
			image.at(i, j).blue = 0;
			image.at(i, j).green = 0;
			image.at(i, j).red = 0;
		}
	}

	//Write Image
	image.WriteToDisk("/home/pc/ModernCpp2018/homework_3/data/test.ascii.ppm");
}
