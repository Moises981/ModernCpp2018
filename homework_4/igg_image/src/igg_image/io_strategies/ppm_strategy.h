#include "strategy.h"

namespace igg {

class PpmStrategy : public IoStrategy {
  public:
  bool Write(const std::string& file_name, const ImageData&) const override;
  ImageData Read(const std::string& file_name) const override;
};
}  // namespace igg

