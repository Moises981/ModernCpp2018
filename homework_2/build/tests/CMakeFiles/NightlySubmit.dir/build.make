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

# Utility rule file for NightlySubmit.

# Include the progress variables for this target.
include tests/CMakeFiles/NightlySubmit.dir/progress.make

tests/CMakeFiles/NightlySubmit:
	cd /home/pc/Homework_cpp/homework_2/build/tests && /usr/bin/ctest -D NightlySubmit

NightlySubmit: tests/CMakeFiles/NightlySubmit
NightlySubmit: tests/CMakeFiles/NightlySubmit.dir/build.make

.PHONY : NightlySubmit

# Rule to build all files generated by this target.
tests/CMakeFiles/NightlySubmit.dir/build: NightlySubmit

.PHONY : tests/CMakeFiles/NightlySubmit.dir/build

tests/CMakeFiles/NightlySubmit.dir/clean:
	cd /home/pc/Homework_cpp/homework_2/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/NightlySubmit.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/NightlySubmit.dir/clean

tests/CMakeFiles/NightlySubmit.dir/depend:
	cd /home/pc/Homework_cpp/homework_2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/Homework_cpp/homework_2 /home/pc/Homework_cpp/homework_2/tests /home/pc/Homework_cpp/homework_2/build /home/pc/Homework_cpp/homework_2/build/tests /home/pc/Homework_cpp/homework_2/build/tests/CMakeFiles/NightlySubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/NightlySubmit.dir/depend

