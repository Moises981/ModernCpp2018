#################### Import the 'io_tools' library here ########################

find_library(TOOLS NAMES io_tools PATHS ${LIBRARY_OUTPUT_PATH})
add_library(image STATIC image.cpp)
target_link_libraries(image ${TOOLS})
add_executable(main main.cpp)
target_link_libraries(main image)


#################### Create a library 'image' below this line ##################
