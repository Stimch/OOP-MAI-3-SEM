# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stimch/study/OOP-MAI-3-SEM/lab_1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stimch/study/OOP-MAI-3-SEM/lab_1/build

# Include any dependencies generated for this target.
include CMakeFiles/RunTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RunTests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RunTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RunTests.dir/flags.make

CMakeFiles/RunTests.dir/unit.cpp.o: CMakeFiles/RunTests.dir/flags.make
CMakeFiles/RunTests.dir/unit.cpp.o: /home/stimch/study/OOP-MAI-3-SEM/lab_1/unit.cpp
CMakeFiles/RunTests.dir/unit.cpp.o: CMakeFiles/RunTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/stimch/study/OOP-MAI-3-SEM/lab_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RunTests.dir/unit.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RunTests.dir/unit.cpp.o -MF CMakeFiles/RunTests.dir/unit.cpp.o.d -o CMakeFiles/RunTests.dir/unit.cpp.o -c /home/stimch/study/OOP-MAI-3-SEM/lab_1/unit.cpp

CMakeFiles/RunTests.dir/unit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RunTests.dir/unit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stimch/study/OOP-MAI-3-SEM/lab_1/unit.cpp > CMakeFiles/RunTests.dir/unit.cpp.i

CMakeFiles/RunTests.dir/unit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RunTests.dir/unit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stimch/study/OOP-MAI-3-SEM/lab_1/unit.cpp -o CMakeFiles/RunTests.dir/unit.cpp.s

CMakeFiles/RunTests.dir/functions.cpp.o: CMakeFiles/RunTests.dir/flags.make
CMakeFiles/RunTests.dir/functions.cpp.o: /home/stimch/study/OOP-MAI-3-SEM/lab_1/functions.cpp
CMakeFiles/RunTests.dir/functions.cpp.o: CMakeFiles/RunTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/stimch/study/OOP-MAI-3-SEM/lab_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/RunTests.dir/functions.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RunTests.dir/functions.cpp.o -MF CMakeFiles/RunTests.dir/functions.cpp.o.d -o CMakeFiles/RunTests.dir/functions.cpp.o -c /home/stimch/study/OOP-MAI-3-SEM/lab_1/functions.cpp

CMakeFiles/RunTests.dir/functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RunTests.dir/functions.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stimch/study/OOP-MAI-3-SEM/lab_1/functions.cpp > CMakeFiles/RunTests.dir/functions.cpp.i

CMakeFiles/RunTests.dir/functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RunTests.dir/functions.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stimch/study/OOP-MAI-3-SEM/lab_1/functions.cpp -o CMakeFiles/RunTests.dir/functions.cpp.s

# Object files for target RunTests
RunTests_OBJECTS = \
"CMakeFiles/RunTests.dir/unit.cpp.o" \
"CMakeFiles/RunTests.dir/functions.cpp.o"

# External object files for target RunTests
RunTests_EXTERNAL_OBJECTS =

RunTests: CMakeFiles/RunTests.dir/unit.cpp.o
RunTests: CMakeFiles/RunTests.dir/functions.cpp.o
RunTests: CMakeFiles/RunTests.dir/build.make
RunTests: lib/libgtest.a
RunTests: lib/libgtest_main.a
RunTests: lib/libgtest.a
RunTests: CMakeFiles/RunTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/stimch/study/OOP-MAI-3-SEM/lab_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable RunTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RunTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RunTests.dir/build: RunTests
.PHONY : CMakeFiles/RunTests.dir/build

CMakeFiles/RunTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RunTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RunTests.dir/clean

CMakeFiles/RunTests.dir/depend:
	cd /home/stimch/study/OOP-MAI-3-SEM/lab_1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stimch/study/OOP-MAI-3-SEM/lab_1 /home/stimch/study/OOP-MAI-3-SEM/lab_1 /home/stimch/study/OOP-MAI-3-SEM/lab_1/build /home/stimch/study/OOP-MAI-3-SEM/lab_1/build /home/stimch/study/OOP-MAI-3-SEM/lab_1/build/CMakeFiles/RunTests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/RunTests.dir/depend

