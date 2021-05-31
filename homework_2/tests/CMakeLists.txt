# If you are not on Linux, you will need to download the source of the
# googletest framework manually and provide the folder to which you have
# - downloaded it by copying this link into your browser:
#   https://github.com/google/googletest/archive/release-1.8.0.zip
# - unpack it into some <FOLDER>
# - use this <FOLDER> instead of /usr/src/gtest in the line below.
add_subdirectory(/usr/src/gtest
                 ${PROJECT_BINARY_DIR}/gtest)
include(CTest) # Include testing cmake package.
set(TEST_BINARY ${PROJECT_NAME}_test)

add_executable(test_img test_img.cpp)
target_link_libraries(test_img image ${TOOLS} gtest gtest_main)
add_test(test_img tests/test_img)

##################### Create your tests below this line ########################
