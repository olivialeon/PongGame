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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.10.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.10.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/solivialeonvitervo/Documents/pong

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/solivialeonvitervo/Documents/pong/Debug

# Include any dependencies generated for this target.
include CMakeFiles/pong_core.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pong_core.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pong_core.dir/flags.make

CMakeFiles/pong_core.dir/src/AssetManager.cpp.o: CMakeFiles/pong_core.dir/flags.make
CMakeFiles/pong_core.dir/src/AssetManager.cpp.o: ../src/AssetManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/solivialeonvitervo/Documents/pong/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pong_core.dir/src/AssetManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong_core.dir/src/AssetManager.cpp.o -c /Users/solivialeonvitervo/Documents/pong/src/AssetManager.cpp

CMakeFiles/pong_core.dir/src/AssetManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong_core.dir/src/AssetManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/solivialeonvitervo/Documents/pong/src/AssetManager.cpp > CMakeFiles/pong_core.dir/src/AssetManager.cpp.i

CMakeFiles/pong_core.dir/src/AssetManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong_core.dir/src/AssetManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/solivialeonvitervo/Documents/pong/src/AssetManager.cpp -o CMakeFiles/pong_core.dir/src/AssetManager.cpp.s

CMakeFiles/pong_core.dir/src/AssetManager.cpp.o.requires:

.PHONY : CMakeFiles/pong_core.dir/src/AssetManager.cpp.o.requires

CMakeFiles/pong_core.dir/src/AssetManager.cpp.o.provides: CMakeFiles/pong_core.dir/src/AssetManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/pong_core.dir/build.make CMakeFiles/pong_core.dir/src/AssetManager.cpp.o.provides.build
.PHONY : CMakeFiles/pong_core.dir/src/AssetManager.cpp.o.provides

CMakeFiles/pong_core.dir/src/AssetManager.cpp.o.provides.build: CMakeFiles/pong_core.dir/src/AssetManager.cpp.o


CMakeFiles/pong_core.dir/src/Game.cpp.o: CMakeFiles/pong_core.dir/flags.make
CMakeFiles/pong_core.dir/src/Game.cpp.o: ../src/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/solivialeonvitervo/Documents/pong/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pong_core.dir/src/Game.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong_core.dir/src/Game.cpp.o -c /Users/solivialeonvitervo/Documents/pong/src/Game.cpp

CMakeFiles/pong_core.dir/src/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong_core.dir/src/Game.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/solivialeonvitervo/Documents/pong/src/Game.cpp > CMakeFiles/pong_core.dir/src/Game.cpp.i

CMakeFiles/pong_core.dir/src/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong_core.dir/src/Game.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/solivialeonvitervo/Documents/pong/src/Game.cpp -o CMakeFiles/pong_core.dir/src/Game.cpp.s

CMakeFiles/pong_core.dir/src/Game.cpp.o.requires:

.PHONY : CMakeFiles/pong_core.dir/src/Game.cpp.o.requires

CMakeFiles/pong_core.dir/src/Game.cpp.o.provides: CMakeFiles/pong_core.dir/src/Game.cpp.o.requires
	$(MAKE) -f CMakeFiles/pong_core.dir/build.make CMakeFiles/pong_core.dir/src/Game.cpp.o.provides.build
.PHONY : CMakeFiles/pong_core.dir/src/Game.cpp.o.provides

CMakeFiles/pong_core.dir/src/Game.cpp.o.provides.build: CMakeFiles/pong_core.dir/src/Game.cpp.o


CMakeFiles/pong_core.dir/src/InputManager.cpp.o: CMakeFiles/pong_core.dir/flags.make
CMakeFiles/pong_core.dir/src/InputManager.cpp.o: ../src/InputManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/solivialeonvitervo/Documents/pong/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pong_core.dir/src/InputManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong_core.dir/src/InputManager.cpp.o -c /Users/solivialeonvitervo/Documents/pong/src/InputManager.cpp

CMakeFiles/pong_core.dir/src/InputManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong_core.dir/src/InputManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/solivialeonvitervo/Documents/pong/src/InputManager.cpp > CMakeFiles/pong_core.dir/src/InputManager.cpp.i

CMakeFiles/pong_core.dir/src/InputManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong_core.dir/src/InputManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/solivialeonvitervo/Documents/pong/src/InputManager.cpp -o CMakeFiles/pong_core.dir/src/InputManager.cpp.s

CMakeFiles/pong_core.dir/src/InputManager.cpp.o.requires:

.PHONY : CMakeFiles/pong_core.dir/src/InputManager.cpp.o.requires

CMakeFiles/pong_core.dir/src/InputManager.cpp.o.provides: CMakeFiles/pong_core.dir/src/InputManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/pong_core.dir/build.make CMakeFiles/pong_core.dir/src/InputManager.cpp.o.provides.build
.PHONY : CMakeFiles/pong_core.dir/src/InputManager.cpp.o.provides

CMakeFiles/pong_core.dir/src/InputManager.cpp.o.provides.build: CMakeFiles/pong_core.dir/src/InputManager.cpp.o


CMakeFiles/pong_core.dir/src/IntroState.cpp.o: CMakeFiles/pong_core.dir/flags.make
CMakeFiles/pong_core.dir/src/IntroState.cpp.o: ../src/IntroState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/solivialeonvitervo/Documents/pong/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/pong_core.dir/src/IntroState.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong_core.dir/src/IntroState.cpp.o -c /Users/solivialeonvitervo/Documents/pong/src/IntroState.cpp

CMakeFiles/pong_core.dir/src/IntroState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong_core.dir/src/IntroState.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/solivialeonvitervo/Documents/pong/src/IntroState.cpp > CMakeFiles/pong_core.dir/src/IntroState.cpp.i

CMakeFiles/pong_core.dir/src/IntroState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong_core.dir/src/IntroState.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/solivialeonvitervo/Documents/pong/src/IntroState.cpp -o CMakeFiles/pong_core.dir/src/IntroState.cpp.s

CMakeFiles/pong_core.dir/src/IntroState.cpp.o.requires:

.PHONY : CMakeFiles/pong_core.dir/src/IntroState.cpp.o.requires

CMakeFiles/pong_core.dir/src/IntroState.cpp.o.provides: CMakeFiles/pong_core.dir/src/IntroState.cpp.o.requires
	$(MAKE) -f CMakeFiles/pong_core.dir/build.make CMakeFiles/pong_core.dir/src/IntroState.cpp.o.provides.build
.PHONY : CMakeFiles/pong_core.dir/src/IntroState.cpp.o.provides

CMakeFiles/pong_core.dir/src/IntroState.cpp.o.provides.build: CMakeFiles/pong_core.dir/src/IntroState.cpp.o


CMakeFiles/pong_core.dir/src/StateMachine.cpp.o: CMakeFiles/pong_core.dir/flags.make
CMakeFiles/pong_core.dir/src/StateMachine.cpp.o: ../src/StateMachine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/solivialeonvitervo/Documents/pong/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/pong_core.dir/src/StateMachine.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pong_core.dir/src/StateMachine.cpp.o -c /Users/solivialeonvitervo/Documents/pong/src/StateMachine.cpp

CMakeFiles/pong_core.dir/src/StateMachine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pong_core.dir/src/StateMachine.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/solivialeonvitervo/Documents/pong/src/StateMachine.cpp > CMakeFiles/pong_core.dir/src/StateMachine.cpp.i

CMakeFiles/pong_core.dir/src/StateMachine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pong_core.dir/src/StateMachine.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/solivialeonvitervo/Documents/pong/src/StateMachine.cpp -o CMakeFiles/pong_core.dir/src/StateMachine.cpp.s

CMakeFiles/pong_core.dir/src/StateMachine.cpp.o.requires:

.PHONY : CMakeFiles/pong_core.dir/src/StateMachine.cpp.o.requires

CMakeFiles/pong_core.dir/src/StateMachine.cpp.o.provides: CMakeFiles/pong_core.dir/src/StateMachine.cpp.o.requires
	$(MAKE) -f CMakeFiles/pong_core.dir/build.make CMakeFiles/pong_core.dir/src/StateMachine.cpp.o.provides.build
.PHONY : CMakeFiles/pong_core.dir/src/StateMachine.cpp.o.provides

CMakeFiles/pong_core.dir/src/StateMachine.cpp.o.provides.build: CMakeFiles/pong_core.dir/src/StateMachine.cpp.o


# Object files for target pong_core
pong_core_OBJECTS = \
"CMakeFiles/pong_core.dir/src/AssetManager.cpp.o" \
"CMakeFiles/pong_core.dir/src/Game.cpp.o" \
"CMakeFiles/pong_core.dir/src/InputManager.cpp.o" \
"CMakeFiles/pong_core.dir/src/IntroState.cpp.o" \
"CMakeFiles/pong_core.dir/src/StateMachine.cpp.o"

# External object files for target pong_core
pong_core_EXTERNAL_OBJECTS =

libpong_core.a: CMakeFiles/pong_core.dir/src/AssetManager.cpp.o
libpong_core.a: CMakeFiles/pong_core.dir/src/Game.cpp.o
libpong_core.a: CMakeFiles/pong_core.dir/src/InputManager.cpp.o
libpong_core.a: CMakeFiles/pong_core.dir/src/IntroState.cpp.o
libpong_core.a: CMakeFiles/pong_core.dir/src/StateMachine.cpp.o
libpong_core.a: CMakeFiles/pong_core.dir/build.make
libpong_core.a: CMakeFiles/pong_core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/solivialeonvitervo/Documents/pong/Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library libpong_core.a"
	$(CMAKE_COMMAND) -P CMakeFiles/pong_core.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pong_core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pong_core.dir/build: libpong_core.a

.PHONY : CMakeFiles/pong_core.dir/build

CMakeFiles/pong_core.dir/requires: CMakeFiles/pong_core.dir/src/AssetManager.cpp.o.requires
CMakeFiles/pong_core.dir/requires: CMakeFiles/pong_core.dir/src/Game.cpp.o.requires
CMakeFiles/pong_core.dir/requires: CMakeFiles/pong_core.dir/src/InputManager.cpp.o.requires
CMakeFiles/pong_core.dir/requires: CMakeFiles/pong_core.dir/src/IntroState.cpp.o.requires
CMakeFiles/pong_core.dir/requires: CMakeFiles/pong_core.dir/src/StateMachine.cpp.o.requires

.PHONY : CMakeFiles/pong_core.dir/requires

CMakeFiles/pong_core.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pong_core.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pong_core.dir/clean

CMakeFiles/pong_core.dir/depend:
	cd /Users/solivialeonvitervo/Documents/pong/Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/solivialeonvitervo/Documents/pong /Users/solivialeonvitervo/Documents/pong /Users/solivialeonvitervo/Documents/pong/Debug /Users/solivialeonvitervo/Documents/pong/Debug /Users/solivialeonvitervo/Documents/pong/Debug/CMakeFiles/pong_core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pong_core.dir/depend

