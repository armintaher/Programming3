# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /cygdrive/c/Users/armin/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/armin/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/armin/Desktop/Programming3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/armin/Desktop/Programming3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Programming3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Programming3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Programming3.dir/flags.make

CMakeFiles/Programming3.dir/main.cpp.o: CMakeFiles/Programming3.dir/flags.make
CMakeFiles/Programming3.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/armin/Desktop/Programming3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Programming3.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Programming3.dir/main.cpp.o -c /cygdrive/c/Users/armin/Desktop/Programming3/main.cpp

CMakeFiles/Programming3.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Programming3.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/armin/Desktop/Programming3/main.cpp > CMakeFiles/Programming3.dir/main.cpp.i

CMakeFiles/Programming3.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Programming3.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/armin/Desktop/Programming3/main.cpp -o CMakeFiles/Programming3.dir/main.cpp.s

CMakeFiles/Programming3.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Programming3.dir/main.cpp.o.requires

CMakeFiles/Programming3.dir/main.cpp.o.provides: CMakeFiles/Programming3.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Programming3.dir/build.make CMakeFiles/Programming3.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Programming3.dir/main.cpp.o.provides

CMakeFiles/Programming3.dir/main.cpp.o.provides.build: CMakeFiles/Programming3.dir/main.cpp.o


CMakeFiles/Programming3.dir/Project3.cpp.o: CMakeFiles/Programming3.dir/flags.make
CMakeFiles/Programming3.dir/Project3.cpp.o: ../Project3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/armin/Desktop/Programming3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Programming3.dir/Project3.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Programming3.dir/Project3.cpp.o -c /cygdrive/c/Users/armin/Desktop/Programming3/Project3.cpp

CMakeFiles/Programming3.dir/Project3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Programming3.dir/Project3.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /cygdrive/c/Users/armin/Desktop/Programming3/Project3.cpp > CMakeFiles/Programming3.dir/Project3.cpp.i

CMakeFiles/Programming3.dir/Project3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Programming3.dir/Project3.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /cygdrive/c/Users/armin/Desktop/Programming3/Project3.cpp -o CMakeFiles/Programming3.dir/Project3.cpp.s

CMakeFiles/Programming3.dir/Project3.cpp.o.requires:

.PHONY : CMakeFiles/Programming3.dir/Project3.cpp.o.requires

CMakeFiles/Programming3.dir/Project3.cpp.o.provides: CMakeFiles/Programming3.dir/Project3.cpp.o.requires
	$(MAKE) -f CMakeFiles/Programming3.dir/build.make CMakeFiles/Programming3.dir/Project3.cpp.o.provides.build
.PHONY : CMakeFiles/Programming3.dir/Project3.cpp.o.provides

CMakeFiles/Programming3.dir/Project3.cpp.o.provides.build: CMakeFiles/Programming3.dir/Project3.cpp.o


# Object files for target Programming3
Programming3_OBJECTS = \
"CMakeFiles/Programming3.dir/main.cpp.o" \
"CMakeFiles/Programming3.dir/Project3.cpp.o"

# External object files for target Programming3
Programming3_EXTERNAL_OBJECTS =

Programming3.exe: CMakeFiles/Programming3.dir/main.cpp.o
Programming3.exe: CMakeFiles/Programming3.dir/Project3.cpp.o
Programming3.exe: CMakeFiles/Programming3.dir/build.make
Programming3.exe: CMakeFiles/Programming3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/armin/Desktop/Programming3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Programming3.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Programming3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Programming3.dir/build: Programming3.exe

.PHONY : CMakeFiles/Programming3.dir/build

CMakeFiles/Programming3.dir/requires: CMakeFiles/Programming3.dir/main.cpp.o.requires
CMakeFiles/Programming3.dir/requires: CMakeFiles/Programming3.dir/Project3.cpp.o.requires

.PHONY : CMakeFiles/Programming3.dir/requires

CMakeFiles/Programming3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Programming3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Programming3.dir/clean

CMakeFiles/Programming3.dir/depend:
	cd /cygdrive/c/Users/armin/Desktop/Programming3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/armin/Desktop/Programming3 /cygdrive/c/Users/armin/Desktop/Programming3 /cygdrive/c/Users/armin/Desktop/Programming3/cmake-build-debug /cygdrive/c/Users/armin/Desktop/Programming3/cmake-build-debug /cygdrive/c/Users/armin/Desktop/Programming3/cmake-build-debug/CMakeFiles/Programming3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Programming3.dir/depend

