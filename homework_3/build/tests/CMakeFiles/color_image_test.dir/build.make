# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pc/ModernCpp2018/homework_3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pc/ModernCpp2018/homework_3/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/color_image_test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/color_image_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/color_image_test.dir/flags.make

tests/CMakeFiles/color_image_test.dir/test_init.cpp.o: tests/CMakeFiles/color_image_test.dir/flags.make
tests/CMakeFiles/color_image_test.dir/test_init.cpp.o: ../tests/test_init.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/ModernCpp2018/homework_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/color_image_test.dir/test_init.cpp.o"
	cd /home/pc/ModernCpp2018/homework_3/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color_image_test.dir/test_init.cpp.o -c /home/pc/ModernCpp2018/homework_3/tests/test_init.cpp

tests/CMakeFiles/color_image_test.dir/test_init.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_image_test.dir/test_init.cpp.i"
	cd /home/pc/ModernCpp2018/homework_3/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/ModernCpp2018/homework_3/tests/test_init.cpp > CMakeFiles/color_image_test.dir/test_init.cpp.i

tests/CMakeFiles/color_image_test.dir/test_init.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_image_test.dir/test_init.cpp.s"
	cd /home/pc/ModernCpp2018/homework_3/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/ModernCpp2018/homework_3/tests/test_init.cpp -o CMakeFiles/color_image_test.dir/test_init.cpp.s

tests/CMakeFiles/color_image_test.dir/test_resize.cpp.o: tests/CMakeFiles/color_image_test.dir/flags.make
tests/CMakeFiles/color_image_test.dir/test_resize.cpp.o: ../tests/test_resize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/ModernCpp2018/homework_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/color_image_test.dir/test_resize.cpp.o"
	cd /home/pc/ModernCpp2018/homework_3/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color_image_test.dir/test_resize.cpp.o -c /home/pc/ModernCpp2018/homework_3/tests/test_resize.cpp

tests/CMakeFiles/color_image_test.dir/test_resize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_image_test.dir/test_resize.cpp.i"
	cd /home/pc/ModernCpp2018/homework_3/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/ModernCpp2018/homework_3/tests/test_resize.cpp > CMakeFiles/color_image_test.dir/test_resize.cpp.i

tests/CMakeFiles/color_image_test.dir/test_resize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_image_test.dir/test_resize.cpp.s"
	cd /home/pc/ModernCpp2018/homework_3/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/ModernCpp2018/homework_3/tests/test_resize.cpp -o CMakeFiles/color_image_test.dir/test_resize.cpp.s

# Object files for target color_image_test
color_image_test_OBJECTS = \
"CMakeFiles/color_image_test.dir/test_init.cpp.o" \
"CMakeFiles/color_image_test.dir/test_resize.cpp.o"

# External object files for target color_image_test
color_image_test_EXTERNAL_OBJECTS =

../bin/color_image_test: tests/CMakeFiles/color_image_test.dir/test_init.cpp.o
../bin/color_image_test: tests/CMakeFiles/color_image_test.dir/test_resize.cpp.o
../bin/color_image_test: tests/CMakeFiles/color_image_test.dir/build.make
../bin/color_image_test: ../lib/libimage_lib.a
../bin/color_image_test: ../lib/libgtest.a
../bin/color_image_test: ../lib/libgtest_main.a
../bin/color_image_test: ../lib/libstrategies.a
../bin/color_image_test: /usr/lib/x86_64-linux-gnu/libpng.so
../bin/color_image_test: ../lib/libgtest.a
../bin/color_image_test: tests/CMakeFiles/color_image_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/ModernCpp2018/homework_3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/color_image_test"
	cd /home/pc/ModernCpp2018/homework_3/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color_image_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/color_image_test.dir/build: ../bin/color_image_test

.PHONY : tests/CMakeFiles/color_image_test.dir/build

tests/CMakeFiles/color_image_test.dir/clean:
	cd /home/pc/ModernCpp2018/homework_3/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/color_image_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/color_image_test.dir/clean

tests/CMakeFiles/color_image_test.dir/depend:
	cd /home/pc/ModernCpp2018/homework_3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/ModernCpp2018/homework_3 /home/pc/ModernCpp2018/homework_3/tests /home/pc/ModernCpp2018/homework_3/build /home/pc/ModernCpp2018/homework_3/build/tests /home/pc/ModernCpp2018/homework_3/build/tests/CMakeFiles/color_image_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/color_image_test.dir/depend

