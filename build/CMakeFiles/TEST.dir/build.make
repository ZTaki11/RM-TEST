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
CMAKE_SOURCE_DIR = "/home/zcy/桌面/Final TEST"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/zcy/桌面/Final TEST/build"

# Include any dependencies generated for this target.
include CMakeFiles/TEST.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TEST.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TEST.dir/flags.make

CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o: CMakeFiles/TEST.dir/flags.make
CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o: ../src/ArmorDescriptor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zcy/桌面/Final TEST/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o -c "/home/zcy/桌面/Final TEST/src/ArmorDescriptor.cpp"

CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zcy/桌面/Final TEST/src/ArmorDescriptor.cpp" > CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.i

CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zcy/桌面/Final TEST/src/ArmorDescriptor.cpp" -o CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.s

CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o.requires:

.PHONY : CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o.requires

CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o.provides: CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o.requires
	$(MAKE) -f CMakeFiles/TEST.dir/build.make CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o.provides.build
.PHONY : CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o.provides

CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o.provides.build: CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o


CMakeFiles/TEST.dir/src/NumberMatch.cpp.o: CMakeFiles/TEST.dir/flags.make
CMakeFiles/TEST.dir/src/NumberMatch.cpp.o: ../src/NumberMatch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zcy/桌面/Final TEST/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TEST.dir/src/NumberMatch.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TEST.dir/src/NumberMatch.cpp.o -c "/home/zcy/桌面/Final TEST/src/NumberMatch.cpp"

CMakeFiles/TEST.dir/src/NumberMatch.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TEST.dir/src/NumberMatch.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zcy/桌面/Final TEST/src/NumberMatch.cpp" > CMakeFiles/TEST.dir/src/NumberMatch.cpp.i

CMakeFiles/TEST.dir/src/NumberMatch.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TEST.dir/src/NumberMatch.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zcy/桌面/Final TEST/src/NumberMatch.cpp" -o CMakeFiles/TEST.dir/src/NumberMatch.cpp.s

CMakeFiles/TEST.dir/src/NumberMatch.cpp.o.requires:

.PHONY : CMakeFiles/TEST.dir/src/NumberMatch.cpp.o.requires

CMakeFiles/TEST.dir/src/NumberMatch.cpp.o.provides: CMakeFiles/TEST.dir/src/NumberMatch.cpp.o.requires
	$(MAKE) -f CMakeFiles/TEST.dir/build.make CMakeFiles/TEST.dir/src/NumberMatch.cpp.o.provides.build
.PHONY : CMakeFiles/TEST.dir/src/NumberMatch.cpp.o.provides

CMakeFiles/TEST.dir/src/NumberMatch.cpp.o.provides.build: CMakeFiles/TEST.dir/src/NumberMatch.cpp.o


CMakeFiles/TEST.dir/src/main.cpp.o: CMakeFiles/TEST.dir/flags.make
CMakeFiles/TEST.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/zcy/桌面/Final TEST/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TEST.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TEST.dir/src/main.cpp.o -c "/home/zcy/桌面/Final TEST/src/main.cpp"

CMakeFiles/TEST.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TEST.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/zcy/桌面/Final TEST/src/main.cpp" > CMakeFiles/TEST.dir/src/main.cpp.i

CMakeFiles/TEST.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TEST.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/zcy/桌面/Final TEST/src/main.cpp" -o CMakeFiles/TEST.dir/src/main.cpp.s

CMakeFiles/TEST.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/TEST.dir/src/main.cpp.o.requires

CMakeFiles/TEST.dir/src/main.cpp.o.provides: CMakeFiles/TEST.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/TEST.dir/build.make CMakeFiles/TEST.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/TEST.dir/src/main.cpp.o.provides

CMakeFiles/TEST.dir/src/main.cpp.o.provides.build: CMakeFiles/TEST.dir/src/main.cpp.o


# Object files for target TEST
TEST_OBJECTS = \
"CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o" \
"CMakeFiles/TEST.dir/src/NumberMatch.cpp.o" \
"CMakeFiles/TEST.dir/src/main.cpp.o"

# External object files for target TEST
TEST_EXTERNAL_OBJECTS =

TEST: CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o
TEST: CMakeFiles/TEST.dir/src/NumberMatch.cpp.o
TEST: CMakeFiles/TEST.dir/src/main.cpp.o
TEST: CMakeFiles/TEST.dir/build.make
TEST: /usr/local/lib/libopencv_gapi.so.4.6.0
TEST: /usr/local/lib/libopencv_highgui.so.4.6.0
TEST: /usr/local/lib/libopencv_ml.so.4.6.0
TEST: /usr/local/lib/libopencv_objdetect.so.4.6.0
TEST: /usr/local/lib/libopencv_photo.so.4.6.0
TEST: /usr/local/lib/libopencv_stitching.so.4.6.0
TEST: /usr/local/lib/libopencv_video.so.4.6.0
TEST: /usr/local/lib/libopencv_videoio.so.4.6.0
TEST: libArmorDescriptor.so
TEST: /usr/local/lib/libopencv_imgcodecs.so.4.6.0
TEST: /usr/local/lib/libopencv_dnn.so.4.6.0
TEST: /usr/local/lib/libopencv_calib3d.so.4.6.0
TEST: /usr/local/lib/libopencv_features2d.so.4.6.0
TEST: /usr/local/lib/libopencv_flann.so.4.6.0
TEST: /usr/local/lib/libopencv_imgproc.so.4.6.0
TEST: /usr/local/lib/libopencv_core.so.4.6.0
TEST: CMakeFiles/TEST.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/zcy/桌面/Final TEST/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable TEST"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TEST.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TEST.dir/build: TEST

.PHONY : CMakeFiles/TEST.dir/build

CMakeFiles/TEST.dir/requires: CMakeFiles/TEST.dir/src/ArmorDescriptor.cpp.o.requires
CMakeFiles/TEST.dir/requires: CMakeFiles/TEST.dir/src/NumberMatch.cpp.o.requires
CMakeFiles/TEST.dir/requires: CMakeFiles/TEST.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/TEST.dir/requires

CMakeFiles/TEST.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TEST.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TEST.dir/clean

CMakeFiles/TEST.dir/depend:
	cd "/home/zcy/桌面/Final TEST/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/zcy/桌面/Final TEST" "/home/zcy/桌面/Final TEST" "/home/zcy/桌面/Final TEST/build" "/home/zcy/桌面/Final TEST/build" "/home/zcy/桌面/Final TEST/build/CMakeFiles/TEST.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/TEST.dir/depend

