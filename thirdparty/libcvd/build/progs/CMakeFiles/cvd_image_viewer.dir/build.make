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
include progs/CMakeFiles/cvd_image_viewer.dir/depend.make

# Include the progress variables for this target.
include progs/CMakeFiles/cvd_image_viewer.dir/progress.make

# Include the compile flags for this target's objects.
include progs/CMakeFiles/cvd_image_viewer.dir/flags.make

progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o: progs/CMakeFiles/cvd_image_viewer.dir/flags.make
progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o: ../progs/cvd_image_viewer.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o"
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/progs && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o -c /home/duan/ROVGS/ROVGS/thirdparty/libcvd/progs/cvd_image_viewer.cxx

progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.i"
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/progs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/duan/ROVGS/ROVGS/thirdparty/libcvd/progs/cvd_image_viewer.cxx > CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.i

progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.s"
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/progs && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/duan/ROVGS/ROVGS/thirdparty/libcvd/progs/cvd_image_viewer.cxx -o CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.s

progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o.requires:

.PHONY : progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o.requires

progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o.provides: progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o.requires
	$(MAKE) -f progs/CMakeFiles/cvd_image_viewer.dir/build.make progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o.provides.build
.PHONY : progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o.provides

progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o.provides.build: progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o


# Object files for target cvd_image_viewer
cvd_image_viewer_OBJECTS = \
"CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o"

# External object files for target cvd_image_viewer
cvd_image_viewer_EXTERNAL_OBJECTS =

progs/cvd_image_viewer: progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o
progs/cvd_image_viewer: progs/CMakeFiles/cvd_image_viewer.dir/build.make
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libSM.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libICE.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libX11.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libXext.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libGLU.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libGL.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libpng.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libz.so
progs/cvd_image_viewer: libCVD.a
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libSM.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libICE.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libX11.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libXext.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libGLU.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libGL.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libpng.so
progs/cvd_image_viewer: /usr/lib/x86_64-linux-gnu/libz.so
progs/cvd_image_viewer: progs/CMakeFiles/cvd_image_viewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cvd_image_viewer"
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/progs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cvd_image_viewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
progs/CMakeFiles/cvd_image_viewer.dir/build: progs/cvd_image_viewer

.PHONY : progs/CMakeFiles/cvd_image_viewer.dir/build

progs/CMakeFiles/cvd_image_viewer.dir/requires: progs/CMakeFiles/cvd_image_viewer.dir/cvd_image_viewer.cxx.o.requires

.PHONY : progs/CMakeFiles/cvd_image_viewer.dir/requires

progs/CMakeFiles/cvd_image_viewer.dir/clean:
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/progs && $(CMAKE_COMMAND) -P CMakeFiles/cvd_image_viewer.dir/cmake_clean.cmake
.PHONY : progs/CMakeFiles/cvd_image_viewer.dir/clean

progs/CMakeFiles/cvd_image_viewer.dir/depend:
	cd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/duan/ROVGS/ROVGS/thirdparty/libcvd /home/duan/ROVGS/ROVGS/thirdparty/libcvd/progs /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/progs /home/duan/ROVGS/ROVGS/thirdparty/libcvd/build/progs/CMakeFiles/cvd_image_viewer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : progs/CMakeFiles/cvd_image_viewer.dir/depend

