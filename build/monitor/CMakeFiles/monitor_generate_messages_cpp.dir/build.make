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

# Utility rule file for monitor_generate_messages_cpp.

# Include the progress variables for this target.
include monitor/CMakeFiles/monitor_generate_messages_cpp.dir/progress.make

monitor/CMakeFiles/monitor_generate_messages_cpp: /home/tuf2/Watcher/devel/include/monitor/box.h
monitor/CMakeFiles/monitor_generate_messages_cpp: /home/tuf2/Watcher/devel/include/monitor/boxes.h


/home/tuf2/Watcher/devel/include/monitor/box.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/home/tuf2/Watcher/devel/include/monitor/box.h: /home/tuf2/Watcher/src/monitor/msg/box.msg
/home/tuf2/Watcher/devel/include/monitor/box.h: /opt/ros/melodic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuf2/Watcher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from monitor/box.msg"
	cd /home/tuf2/Watcher/src/monitor && /home/tuf2/Watcher/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/tuf2/Watcher/src/monitor/msg/box.msg -Imonitor:/home/tuf2/Watcher/src/monitor/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p monitor -o /home/tuf2/Watcher/devel/include/monitor -e /opt/ros/melodic/share/gencpp/cmake/..

/home/tuf2/Watcher/devel/include/monitor/boxes.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/home/tuf2/Watcher/devel/include/monitor/boxes.h: /home/tuf2/Watcher/src/monitor/msg/boxes.msg
/home/tuf2/Watcher/devel/include/monitor/boxes.h: /home/tuf2/Watcher/src/monitor/msg/box.msg
/home/tuf2/Watcher/devel/include/monitor/boxes.h: /opt/ros/melodic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tuf2/Watcher/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from monitor/boxes.msg"
	cd /home/tuf2/Watcher/src/monitor && /home/tuf2/Watcher/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/tuf2/Watcher/src/monitor/msg/boxes.msg -Imonitor:/home/tuf2/Watcher/src/monitor/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p monitor -o /home/tuf2/Watcher/devel/include/monitor -e /opt/ros/melodic/share/gencpp/cmake/..

monitor_generate_messages_cpp: monitor/CMakeFiles/monitor_generate_messages_cpp
monitor_generate_messages_cpp: /home/tuf2/Watcher/devel/include/monitor/box.h
monitor_generate_messages_cpp: /home/tuf2/Watcher/devel/include/monitor/boxes.h
monitor_generate_messages_cpp: monitor/CMakeFiles/monitor_generate_messages_cpp.dir/build.make

.PHONY : monitor_generate_messages_cpp

# Rule to build all files generated by this target.
monitor/CMakeFiles/monitor_generate_messages_cpp.dir/build: monitor_generate_messages_cpp

.PHONY : monitor/CMakeFiles/monitor_generate_messages_cpp.dir/build

monitor/CMakeFiles/monitor_generate_messages_cpp.dir/clean:
	cd /home/tuf2/Watcher/build/monitor && $(CMAKE_COMMAND) -P CMakeFiles/monitor_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : monitor/CMakeFiles/monitor_generate_messages_cpp.dir/clean

monitor/CMakeFiles/monitor_generate_messages_cpp.dir/depend:
	cd /home/tuf2/Watcher/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tuf2/Watcher/src /home/tuf2/Watcher/src/monitor /home/tuf2/Watcher/build /home/tuf2/Watcher/build/monitor /home/tuf2/Watcher/build/monitor/CMakeFiles/monitor_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : monitor/CMakeFiles/monitor_generate_messages_cpp.dir/depend
