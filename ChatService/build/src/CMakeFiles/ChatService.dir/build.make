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
CMAKE_SOURCE_DIR = /home/shicg/tinyqq/ChatService

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shicg/tinyqq/ChatService/build

# Include any dependencies generated for this target.
include src/CMakeFiles/ChatService.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/ChatService.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/ChatService.dir/flags.make

src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o: src/CMakeFiles/ChatService.dir/flags.make
src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o: ../src/LogServer.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shicg/tinyqq/ChatService/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatService.dir/LogServer.pb.cc.o -c /home/shicg/tinyqq/ChatService/src/LogServer.pb.cc

src/CMakeFiles/ChatService.dir/LogServer.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatService.dir/LogServer.pb.cc.i"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shicg/tinyqq/ChatService/src/LogServer.pb.cc > CMakeFiles/ChatService.dir/LogServer.pb.cc.i

src/CMakeFiles/ChatService.dir/LogServer.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatService.dir/LogServer.pb.cc.s"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shicg/tinyqq/ChatService/src/LogServer.pb.cc -o CMakeFiles/ChatService.dir/LogServer.pb.cc.s

src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o.requires:

.PHONY : src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o.requires

src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o.provides: src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o.requires
	$(MAKE) -f src/CMakeFiles/ChatService.dir/build.make src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o.provides.build
.PHONY : src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o.provides

src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o.provides.build: src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o


src/CMakeFiles/ChatService.dir/Redis.cpp.o: src/CMakeFiles/ChatService.dir/flags.make
src/CMakeFiles/ChatService.dir/Redis.cpp.o: ../src/Redis.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shicg/tinyqq/ChatService/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/ChatService.dir/Redis.cpp.o"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatService.dir/Redis.cpp.o -c /home/shicg/tinyqq/ChatService/src/Redis.cpp

src/CMakeFiles/ChatService.dir/Redis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatService.dir/Redis.cpp.i"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shicg/tinyqq/ChatService/src/Redis.cpp > CMakeFiles/ChatService.dir/Redis.cpp.i

src/CMakeFiles/ChatService.dir/Redis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatService.dir/Redis.cpp.s"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shicg/tinyqq/ChatService/src/Redis.cpp -o CMakeFiles/ChatService.dir/Redis.cpp.s

src/CMakeFiles/ChatService.dir/Redis.cpp.o.requires:

.PHONY : src/CMakeFiles/ChatService.dir/Redis.cpp.o.requires

src/CMakeFiles/ChatService.dir/Redis.cpp.o.provides: src/CMakeFiles/ChatService.dir/Redis.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/ChatService.dir/build.make src/CMakeFiles/ChatService.dir/Redis.cpp.o.provides.build
.PHONY : src/CMakeFiles/ChatService.dir/Redis.cpp.o.provides

src/CMakeFiles/ChatService.dir/Redis.cpp.o.provides.build: src/CMakeFiles/ChatService.dir/Redis.cpp.o


src/CMakeFiles/ChatService.dir/run.cpp.o: src/CMakeFiles/ChatService.dir/flags.make
src/CMakeFiles/ChatService.dir/run.cpp.o: ../src/run.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shicg/tinyqq/ChatService/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/ChatService.dir/run.cpp.o"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ChatService.dir/run.cpp.o -c /home/shicg/tinyqq/ChatService/src/run.cpp

src/CMakeFiles/ChatService.dir/run.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ChatService.dir/run.cpp.i"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shicg/tinyqq/ChatService/src/run.cpp > CMakeFiles/ChatService.dir/run.cpp.i

src/CMakeFiles/ChatService.dir/run.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ChatService.dir/run.cpp.s"
	cd /home/shicg/tinyqq/ChatService/build/src && /usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shicg/tinyqq/ChatService/src/run.cpp -o CMakeFiles/ChatService.dir/run.cpp.s

src/CMakeFiles/ChatService.dir/run.cpp.o.requires:

.PHONY : src/CMakeFiles/ChatService.dir/run.cpp.o.requires

src/CMakeFiles/ChatService.dir/run.cpp.o.provides: src/CMakeFiles/ChatService.dir/run.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/ChatService.dir/build.make src/CMakeFiles/ChatService.dir/run.cpp.o.provides.build
.PHONY : src/CMakeFiles/ChatService.dir/run.cpp.o.provides

src/CMakeFiles/ChatService.dir/run.cpp.o.provides.build: src/CMakeFiles/ChatService.dir/run.cpp.o


# Object files for target ChatService
ChatService_OBJECTS = \
"CMakeFiles/ChatService.dir/LogServer.pb.cc.o" \
"CMakeFiles/ChatService.dir/Redis.cpp.o" \
"CMakeFiles/ChatService.dir/run.cpp.o"

# External object files for target ChatService
ChatService_EXTERNAL_OBJECTS =

../bin/ChatService: src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o
../bin/ChatService: src/CMakeFiles/ChatService.dir/Redis.cpp.o
../bin/ChatService: src/CMakeFiles/ChatService.dir/run.cpp.o
../bin/ChatService: src/CMakeFiles/ChatService.dir/build.make
../bin/ChatService: src/CMakeFiles/ChatService.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shicg/tinyqq/ChatService/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../bin/ChatService"
	cd /home/shicg/tinyqq/ChatService/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ChatService.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/ChatService.dir/build: ../bin/ChatService

.PHONY : src/CMakeFiles/ChatService.dir/build

src/CMakeFiles/ChatService.dir/requires: src/CMakeFiles/ChatService.dir/LogServer.pb.cc.o.requires
src/CMakeFiles/ChatService.dir/requires: src/CMakeFiles/ChatService.dir/Redis.cpp.o.requires
src/CMakeFiles/ChatService.dir/requires: src/CMakeFiles/ChatService.dir/run.cpp.o.requires

.PHONY : src/CMakeFiles/ChatService.dir/requires

src/CMakeFiles/ChatService.dir/clean:
	cd /home/shicg/tinyqq/ChatService/build/src && $(CMAKE_COMMAND) -P CMakeFiles/ChatService.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ChatService.dir/clean

src/CMakeFiles/ChatService.dir/depend:
	cd /home/shicg/tinyqq/ChatService/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shicg/tinyqq/ChatService /home/shicg/tinyqq/ChatService/src /home/shicg/tinyqq/ChatService/build /home/shicg/tinyqq/ChatService/build/src /home/shicg/tinyqq/ChatService/build/src/CMakeFiles/ChatService.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/ChatService.dir/depend

