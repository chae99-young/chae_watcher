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
CMAKE_SOURCE_DIR = /home/tuf2/Watcher/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tuf2/Watcher/build

# Include any dependencies generated for this target.
include watcher_pkg/CMakeFiles/cam_pub.dir/depend.make

# Include the progress variables for this target.
include watcher_pkg/CMakeFiles/cam_pub.dir/progress.make

# Include the compile flags for this target's objects.
include watcher_pkg/CMakeFiles/cam_pub.dir/flags.make

watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o: watcher_pkg/CMakeFiles/cam_pub.dir/flags.make
watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o: /home/tuf2/Watcher/src/watcher_pkg/src/cam_pub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tuf2/Watcher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o"
	cd /home/tuf2/Watcher/build/watcher_pkg && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o -c /home/tuf2/Watcher/src/watcher_pkg/src/cam_pub.cpp

watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cam_pub.dir/src/cam_pub.cpp.i"
	cd /home/tuf2/Watcher/build/watcher_pkg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tuf2/Watcher/src/watcher_pkg/src/cam_pub.cpp > CMakeFiles/cam_pub.dir/src/cam_pub.cpp.i

watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cam_pub.dir/src/cam_pub.cpp.s"
	cd /home/tuf2/Watcher/build/watcher_pkg && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tuf2/Watcher/src/watcher_pkg/src/cam_pub.cpp -o CMakeFiles/cam_pub.dir/src/cam_pub.cpp.s

watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o.requires:

.PHONY : watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o.requires

watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o.provides: watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o.requires
	$(MAKE) -f watcher_pkg/CMakeFiles/cam_pub.dir/build.make watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o.provides.build
.PHONY : watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o.provides

watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o.provides.build: watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o


# Object files for target cam_pub
cam_pub_OBJECTS = \
"CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o"

# External object files for target cam_pub
cam_pub_EXTERNAL_OBJECTS =

/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: watcher_pkg/CMakeFiles/cam_pub.dir/build.make
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libcv_bridge.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_core.so.3.2.0
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.3.2.0
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.3.2.0
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libimage_transport.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libmessage_filters.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libclass_loader.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/libPocoFoundation.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libdl.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libroscpp.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/librosconsole.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libroslib.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/librospack.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/librostime.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /opt/ros/melodic/lib/libcpp_common.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_gapi.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_video.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: /usr/lib/aarch64-linux-gnu/libopencv_core.so.4.1.1
/home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub: watcher_pkg/CMakeFiles/cam_pub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tuf2/Watcher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub"
	cd /home/tuf2/Watcher/build/watcher_pkg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cam_pub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
watcher_pkg/CMakeFiles/cam_pub.dir/build: /home/tuf2/Watcher/devel/lib/watcher_pkg/cam_pub

.PHONY : watcher_pkg/CMakeFiles/cam_pub.dir/build

watcher_pkg/CMakeFiles/cam_pub.dir/requires: watcher_pkg/CMakeFiles/cam_pub.dir/src/cam_pub.cpp.o.requires

.PHONY : watcher_pkg/CMakeFiles/cam_pub.dir/requires

watcher_pkg/CMakeFiles/cam_pub.dir/clean:
	cd /home/tuf2/Watcher/build/watcher_pkg && $(CMAKE_COMMAND) -P CMakeFiles/cam_pub.dir/cmake_clean.cmake
.PHONY : watcher_pkg/CMakeFiles/cam_pub.dir/clean

watcher_pkg/CMakeFiles/cam_pub.dir/depend:
	cd /home/tuf2/Watcher/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tuf2/Watcher/src /home/tuf2/Watcher/src/watcher_pkg /home/tuf2/Watcher/build /home/tuf2/Watcher/build/watcher_pkg /home/tuf2/Watcher/build/watcher_pkg/CMakeFiles/cam_pub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : watcher_pkg/CMakeFiles/cam_pub.dir/depend

