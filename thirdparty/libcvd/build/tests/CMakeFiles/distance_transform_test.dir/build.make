# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/duan/ROVGS/ROVGS/thirdparty/libcvd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/distance_transform_test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/distance_transform_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/distance_transform_test.dir/flags.make

tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o: tests/CMakeFiles/distance_transform_test.dir/flags.make
tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o: ../tests/distance_transform_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o"
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o -c /home/duan/ROVGS/ROVGS/thirdparty/libcvd/tests/distance_transform_test.cc

tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.i"
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duan/ROVGS/ROVGS/thirdparty/libcvd/tests/distance_transform_test.cc > CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.i

tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.s"
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duan/ROVGS/ROVGS/thirdparty/libcvd/tests/distance_transform_test.cc -o CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.s

tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o.requires:

.PHONY : tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o.requires

tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o.provides: tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o.requires
	$(MAKE) -f tests/CMakeFiles/distance_transform_test.dir/build.make tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o.provides.build
.PHONY : tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o.provides

tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o.provides.build: tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o


# Object files for target distance_transform_test
distance_transform_test_OBJECTS = \
"CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o"

# External object files for target distance_transform_test
distance_transform_test_EXTERNAL_OBJECTS =

tests/distance_transform_test: tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o
tests/distance_transform_test: tests/CMakeFiles/distance_transform_test.dir/build.make
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libSM.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libICE.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libX11.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libXext.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libGLU.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libGL.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libpng.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libz.so
tests/distance_transform_test: libCVD.a
tests/distance_transform_test: libCVD.a
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libSM.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libICE.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libX11.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libXext.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libGLU.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libGL.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libpng.so
tests/distance_transform_test: /usr/lib/x86_64-linux-gnu/libz.so
tests/distance_transform_test: tests/CMakeFiles/distance_transform_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable distance_transform_test"
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/distance_transform_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/distance_transform_test.dir/build: tests/distance_transform_test

.PHONY : tests/CMakeFiles/distance_transform_test.dir/build

tests/CMakeFiles/distance_transform_test.dir/requires: tests/CMakeFiles/distance_transform_test.dir/distance_transform_test.cc.o.requires

.PHONY : tests/CMakeFiles/distance_transform_test.dir/requires

tests/CMakeFiles/distance_transform_test.dir/clean:
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/distance_transform_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/distance_transform_test.dir/clean

tests/CMakeFiles/distance_transform_test.dir/depend:
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duan/ROVGS/ROVGS/thirdparty/libcvd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/tests /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/tests /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/tests/CMakeFiles/distance_transform_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/distance_transform_test.dir/depend
