# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/shicg/tinyqq/LogServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shicg/tinyqq/LogServer/build

# Include any dependencies generated for this target.
include src/CMakeFiles/LogServer.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/LogServer.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/LogServer.dir/flags.make

src/CMakeFiles/LogServer.dir/LogServer.cpp.o: src/CMakeFiles/LogServer.dir/flags.make
src/CMakeFiles/LogServer.dir/LogServer.cpp.o: ../src/LogServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shicg/tinyqq/LogServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/LogServer.dir/LogServer.cpp.o"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LogServer.dir/LogServer.cpp.o -c /home/shicg/tinyqq/LogServer/src/LogServer.cpp

src/CMakeFiles/LogServer.dir/LogServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LogServer.dir/LogServer.cpp.i"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shicg/tinyqq/LogServer/src/LogServer.cpp > CMakeFiles/LogServer.dir/LogServer.cpp.i

src/CMakeFiles/LogServer.dir/LogServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LogServer.dir/LogServer.cpp.s"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shicg/tinyqq/LogServer/src/LogServer.cpp -o CMakeFiles/LogServer.dir/LogServer.cpp.s

src/CMakeFiles/LogServer.dir/LogServer.cpp.o.requires:

.PHONY : src/CMakeFiles/LogServer.dir/LogServer.cpp.o.requires

src/CMakeFiles/LogServer.dir/LogServer.cpp.o.provides: src/CMakeFiles/LogServer.dir/LogServer.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/LogServer.dir/build.make src/CMakeFiles/LogServer.dir/LogServer.cpp.o.provides.build
.PHONY : src/CMakeFiles/LogServer.dir/LogServer.cpp.o.provides

src/CMakeFiles/LogServer.dir/LogServer.cpp.o.provides.build: src/CMakeFiles/LogServer.dir/LogServer.cpp.o


src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o: src/CMakeFiles/LogServer.dir/flags.make
src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o: ../src/LogServer.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shicg/tinyqq/LogServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LogServer.dir/LogServer.pb.cc.o -c /home/shicg/tinyqq/LogServer/src/LogServer.pb.cc

src/CMakeFiles/LogServer.dir/LogServer.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LogServer.dir/LogServer.pb.cc.i"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shicg/tinyqq/LogServer/src/LogServer.pb.cc > CMakeFiles/LogServer.dir/LogServer.pb.cc.i

src/CMakeFiles/LogServer.dir/LogServer.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LogServer.dir/LogServer.pb.cc.s"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shicg/tinyqq/LogServer/src/LogServer.pb.cc -o CMakeFiles/LogServer.dir/LogServer.pb.cc.s

src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o.requires:

.PHONY : src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o.requires

src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o.provides: src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o.requires
	$(MAKE) -f src/CMakeFiles/LogServer.dir/build.make src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o.provides.build
.PHONY : src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o.provides

src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o.provides.build: src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o


src/CMakeFiles/LogServer.dir/run.cpp.o: src/CMakeFiles/LogServer.dir/flags.make
src/CMakeFiles/LogServer.dir/run.cpp.o: ../src/run.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shicg/tinyqq/LogServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/LogServer.dir/run.cpp.o"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LogServer.dir/run.cpp.o -c /home/shicg/tinyqq/LogServer/src/run.cpp

src/CMakeFiles/LogServer.dir/run.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LogServer.dir/run.cpp.i"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shicg/tinyqq/LogServer/src/run.cpp > CMakeFiles/LogServer.dir/run.cpp.i

src/CMakeFiles/LogServer.dir/run.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LogServer.dir/run.cpp.s"
	cd /home/shicg/tinyqq/LogServer/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shicg/tinyqq/LogServer/src/run.cpp -o CMakeFiles/LogServer.dir/run.cpp.s

src/CMakeFiles/LogServer.dir/run.cpp.o.requires:

.PHONY : src/CMakeFiles/LogServer.dir/run.cpp.o.requires

src/CMakeFiles/LogServer.dir/run.cpp.o.provides: src/CMakeFiles/LogServer.dir/run.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/LogServer.dir/build.make src/CMakeFiles/LogServer.dir/run.cpp.o.provides.build
.PHONY : src/CMakeFiles/LogServer.dir/run.cpp.o.provides

src/CMakeFiles/LogServer.dir/run.cpp.o.provides.build: src/CMakeFiles/LogServer.dir/run.cpp.o


# Object files for target LogServer
LogServer_OBJECTS = \
"CMakeFiles/LogServer.dir/LogServer.cpp.o" \
"CMakeFiles/LogServer.dir/LogServer.pb.cc.o" \
"CMakeFiles/LogServer.dir/run.cpp.o"

# External object files for target LogServer
LogServer_EXTERNAL_OBJECTS =

../bin/LogServer: src/CMakeFiles/LogServer.dir/LogServer.cpp.o
../bin/LogServer: src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o
../bin/LogServer: src/CMakeFiles/LogServer.dir/run.cpp.o
../bin/LogServer: src/CMakeFiles/LogServer.dir/build.make
../bin/LogServer: src/CMakeFiles/LogServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shicg/tinyqq/LogServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../bin/LogServer"
	cd /home/shicg/tinyqq/LogServer/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LogServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/LogServer.dir/build: ../bin/LogServer

.PHONY : src/CMakeFiles/LogServer.dir/build

src/CMakeFiles/LogServer.dir/requires: src/CMakeFiles/LogServer.dir/LogServer.cpp.o.requires
src/CMakeFiles/LogServer.dir/requires: src/CMakeFiles/LogServer.dir/LogServer.pb.cc.o.requires
src/CMakeFiles/LogServer.dir/requires: src/CMakeFiles/LogServer.dir/run.cpp.o.requires

.PHONY : src/CMakeFiles/LogServer.dir/requires

src/CMakeFiles/LogServer.dir/clean:
	cd /home/shicg/tinyqq/LogServer/build/src && $(CMAKE_COMMAND) -P CMakeFiles/LogServer.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/LogServer.dir/clean

src/CMakeFiles/LogServer.dir/depend:
	cd /home/shicg/tinyqq/LogServer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shicg/tinyqq/LogServer /home/shicg/tinyqq/LogServer/src /home/shicg/tinyqq/LogServer/build /home/shicg/tinyqq/LogServer/build/src /home/shicg/tinyqq/LogServer/build/src/CMakeFiles/LogServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/LogServer.dir/depend

