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
CMAKE_SOURCE_DIR = /home/pc/Homework_cpp/homework_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pc/Homework_cpp/homework_2/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_img.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_img.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_img.dir/flags.make

tests/CMakeFiles/test_img.dir/test_img.cpp.o: tests/CMakeFiles/test_img.dir/flags.make
tests/CMakeFiles/test_img.dir/test_img.cpp.o: ../tests/test_img.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/Homework_cpp/homework_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test_img.dir/test_img.cpp.o"
	cd /home/pc/Homework_cpp/homework_2/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_img.dir/test_img.cpp.o -c /home/pc/Homework_cpp/homework_2/tests/test_img.cpp

tests/CMakeFiles/test_img.dir/test_img.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_img.dir/test_img.cpp.i"
	cd /home/pc/Homework_cpp/homework_2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/Homework_cpp/homework_2/tests/test_img.cpp > CMakeFiles/test_img.dir/test_img.cpp.i

tests/CMakeFiles/test_img.dir/test_img.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_img.dir/test_img.cpp.s"
	cd /home/pc/Homework_cpp/homework_2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/Homework_cpp/homework_2/tests/test_img.cpp -o CMakeFiles/test_img.dir/test_img.cpp.s

# Object files for target test_img
test_img_OBJECTS = \
"CMakeFiles/test_img.dir/test_img.cpp.o"

# External object files for target test_img
test_img_EXTERNAL_OBJECTS =

../bin/test_img: tests/CMakeFiles/test_img.dir/test_img.cpp.o
../bin/test_img: tests/CMakeFiles/test_img.dir/build.make
../bin/test_img: ../lib/libimage.a
../bin/test_img: ../lib/libio_tools.so
../bin/test_img: ../lib/libgtest.a
../bin/test_img: ../lib/libgtest_main.a
../bin/test_img: ../lib/libgtest.a
../bin/test_img: tests/CMakeFiles/test_img.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/Homework_cpp/homework_2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/test_img"
	cd /home/pc/Homework_cpp/homework_2/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_img.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_img.dir/build: ../bin/test_img

.PHONY : tests/CMakeFiles/test_img.dir/build

tests/CMakeFiles/test_img.dir/clean:
	cd /home/pc/Homework_cpp/homework_2/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_img.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_img.dir/clean

tests/CMakeFiles/test_img.dir/depend:
	cd /home/pc/Homework_cpp/homework_2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/Homework_cpp/homework_2 /home/pc/Homework_cpp/homework_2/tests /home/pc/Homework_cpp/homework_2/build /home/pc/Homework_cpp/homework_2/build/tests /home/pc/Homework_cpp/homework_2/build/tests/CMakeFiles/test_img.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_img.dir/depend

