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

# Utility rule file for watcher_pkg_genpy.

# Include the progress variables for this target.
include watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/progress.make

watcher_pkg_genpy: watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/build.make

.PHONY : watcher_pkg_genpy

# Rule to build all files generated by this target.
watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/build: watcher_pkg_genpy

.PHONY : watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/build

watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/clean:
	cd /home/tuf2/Watcher/build/watcher_pkg && $(CMAKE_COMMAND) -P CMakeFiles/watcher_pkg_genpy.dir/cmake_clean.cmake
.PHONY : watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/clean

watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/depend:
	cd /home/tuf2/Watcher/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tuf2/Watcher/src /home/tuf2/Watcher/src/watcher_pkg /home/tuf2/Watcher/build /home/tuf2/Watcher/build/watcher_pkg /home/tuf2/Watcher/build/watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : watcher_pkg/CMakeFiles/watcher_pkg_genpy.dir/depend

