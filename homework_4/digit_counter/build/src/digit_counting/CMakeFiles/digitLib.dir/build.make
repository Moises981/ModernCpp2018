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
CMAKE_SOURCE_DIR = /home/pc/ModernCpp2018/homework_4/digit_counter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pc/ModernCpp2018/homework_4/digit_counter/build

# Include any dependencies generated for this target.
include src/digit_counting/CMakeFiles/digitLib.dir/depend.make

# Include the progress variables for this target.
include src/digit_counting/CMakeFiles/digitLib.dir/progress.make

# Include the compile flags for this target's objects.
include src/digit_counting/CMakeFiles/digitLib.dir/flags.make

src/digit_counting/CMakeFiles/digitLib.dir/digit_counting.cpp.o: src/digit_counting/CMakeFiles/digitLib.dir/flags.make
src/digit_counting/CMakeFiles/digitLib.dir/digit_counting.cpp.o: ../src/digit_counting/digit_counting.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/ModernCpp2018/homework_4/digit_counter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/digit_counting/CMakeFiles/digitLib.dir/digit_counting.cpp.o"
	cd /home/pc/ModernCpp2018/homework_4/digit_counter/build/src/digit_counting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/digitLib.dir/digit_counting.cpp.o -c /home/pc/ModernCpp2018/homework_4/digit_counter/src/digit_counting/digit_counting.cpp

src/digit_counting/CMakeFiles/digitLib.dir/digit_counting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/digitLib.dir/digit_counting.cpp.i"
	cd /home/pc/ModernCpp2018/homework_4/digit_counter/build/src/digit_counting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/ModernCpp2018/homework_4/digit_counter/src/digit_counting/digit_counting.cpp > CMakeFiles/digitLib.dir/digit_counting.cpp.i

src/digit_counting/CMakeFiles/digitLib.dir/digit_counting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/digitLib.dir/digit_counting.cpp.s"
	cd /home/pc/ModernCpp2018/homework_4/digit_counter/build/src/digit_counting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/ModernCpp2018/homework_4/digit_counter/src/digit_counting/digit_counting.cpp -o CMakeFiles/digitLib.dir/digit_counting.cpp.s

# Object files for target digitLib
digitLib_OBJECTS = \
"CMakeFiles/digitLib.dir/digit_counting.cpp.o"

# External object files for target digitLib
digitLib_EXTERNAL_OBJECTS =

../lib/libdigitLib.a: src/digit_counting/CMakeFiles/digitLib.dir/digit_counting.cpp.o
../lib/libdigitLib.a: src/digit_counting/CMakeFiles/digitLib.dir/build.make
../lib/libdigitLib.a: src/digit_counting/CMakeFiles/digitLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/ModernCpp2018/homework_4/digit_counter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libdigitLib.a"
	cd /home/pc/ModernCpp2018/homework_4/digit_counter/build/src/digit_counting && $(CMAKE_COMMAND) -P CMakeFiles/digitLib.dir/cmake_clean_target.cmake
	cd /home/pc/ModernCpp2018/homework_4/digit_counter/build/src/digit_counting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/digitLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/digit_counting/CMakeFiles/digitLib.dir/build: ../lib/libdigitLib.a

.PHONY : src/digit_counting/CMakeFiles/digitLib.dir/build

src/digit_counting/CMakeFiles/digitLib.dir/clean:
	cd /home/pc/ModernCpp2018/homework_4/digit_counter/build/src/digit_counting && $(CMAKE_COMMAND) -P CMakeFiles/digitLib.dir/cmake_clean.cmake
.PHONY : src/digit_counting/CMakeFiles/digitLib.dir/clean

src/digit_counting/CMakeFiles/digitLib.dir/depend:
	cd /home/pc/ModernCpp2018/homework_4/digit_counter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/ModernCpp2018/homework_4/digit_counter /home/pc/ModernCpp2018/homework_4/digit_counter/src/digit_counting /home/pc/ModernCpp2018/homework_4/digit_counter/build /home/pc/ModernCpp2018/homework_4/digit_counter/build/src/digit_counting /home/pc/ModernCpp2018/homework_4/digit_counter/build/src/digit_counting/CMakeFiles/digitLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/digit_counting/CMakeFiles/digitLib.dir/depend
