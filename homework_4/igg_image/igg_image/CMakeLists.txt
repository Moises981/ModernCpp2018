add_subdirectory(io_strategies)



# TODO: create image library from image.cpp.
add_library(image_lib image.cpp)
# TODO: link image library to any other libraries if needed.
target_link_libraries(image_lib strategies)

