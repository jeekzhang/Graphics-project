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
CMAKE_SOURCE_DIR = /home/jeekzhang/pj/starter2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jeekzhang/pj/starter2/build

# Include any dependencies generated for this target.
include CMakeFiles/a2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/a2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/a2.dir/flags.make

CMakeFiles/a2.dir/src/main.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/a2.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/main.cpp.o -c /home/jeekzhang/pj/starter2/src/main.cpp

CMakeFiles/a2.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/main.cpp > CMakeFiles/a2.dir/src/main.cpp.i

CMakeFiles/a2.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/main.cpp -o CMakeFiles/a2.dir/src/main.cpp.s

CMakeFiles/a2.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/main.cpp.o.requires

CMakeFiles/a2.dir/src/main.cpp.o.provides: CMakeFiles/a2.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/main.cpp.o.provides

CMakeFiles/a2.dir/src/main.cpp.o.provides.build: CMakeFiles/a2.dir/src/main.cpp.o


CMakeFiles/a2.dir/src/stb.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/stb.cpp.o: ../src/stb.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/a2.dir/src/stb.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/stb.cpp.o -c /home/jeekzhang/pj/starter2/src/stb.cpp

CMakeFiles/a2.dir/src/stb.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/stb.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/stb.cpp > CMakeFiles/a2.dir/src/stb.cpp.i

CMakeFiles/a2.dir/src/stb.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/stb.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/stb.cpp -o CMakeFiles/a2.dir/src/stb.cpp.s

CMakeFiles/a2.dir/src/stb.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/stb.cpp.o.requires

CMakeFiles/a2.dir/src/stb.cpp.o.provides: CMakeFiles/a2.dir/src/stb.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/stb.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/stb.cpp.o.provides

CMakeFiles/a2.dir/src/stb.cpp.o.provides.build: CMakeFiles/a2.dir/src/stb.cpp.o


CMakeFiles/a2.dir/src/ArgParser.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/ArgParser.cpp.o: ../src/ArgParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/a2.dir/src/ArgParser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/ArgParser.cpp.o -c /home/jeekzhang/pj/starter2/src/ArgParser.cpp

CMakeFiles/a2.dir/src/ArgParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/ArgParser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/ArgParser.cpp > CMakeFiles/a2.dir/src/ArgParser.cpp.i

CMakeFiles/a2.dir/src/ArgParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/ArgParser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/ArgParser.cpp -o CMakeFiles/a2.dir/src/ArgParser.cpp.s

CMakeFiles/a2.dir/src/ArgParser.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/ArgParser.cpp.o.requires

CMakeFiles/a2.dir/src/ArgParser.cpp.o.provides: CMakeFiles/a2.dir/src/ArgParser.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/ArgParser.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/ArgParser.cpp.o.provides

CMakeFiles/a2.dir/src/ArgParser.cpp.o.provides.build: CMakeFiles/a2.dir/src/ArgParser.cpp.o


CMakeFiles/a2.dir/src/Camera.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/Camera.cpp.o: ../src/Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/a2.dir/src/Camera.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/Camera.cpp.o -c /home/jeekzhang/pj/starter2/src/Camera.cpp

CMakeFiles/a2.dir/src/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/Camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/Camera.cpp > CMakeFiles/a2.dir/src/Camera.cpp.i

CMakeFiles/a2.dir/src/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/Camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/Camera.cpp -o CMakeFiles/a2.dir/src/Camera.cpp.s

CMakeFiles/a2.dir/src/Camera.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/Camera.cpp.o.requires

CMakeFiles/a2.dir/src/Camera.cpp.o.provides: CMakeFiles/a2.dir/src/Camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/Camera.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/Camera.cpp.o.provides

CMakeFiles/a2.dir/src/Camera.cpp.o.provides.build: CMakeFiles/a2.dir/src/Camera.cpp.o


CMakeFiles/a2.dir/src/CubeMap.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/CubeMap.cpp.o: ../src/CubeMap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/a2.dir/src/CubeMap.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/CubeMap.cpp.o -c /home/jeekzhang/pj/starter2/src/CubeMap.cpp

CMakeFiles/a2.dir/src/CubeMap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/CubeMap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/CubeMap.cpp > CMakeFiles/a2.dir/src/CubeMap.cpp.i

CMakeFiles/a2.dir/src/CubeMap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/CubeMap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/CubeMap.cpp -o CMakeFiles/a2.dir/src/CubeMap.cpp.s

CMakeFiles/a2.dir/src/CubeMap.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/CubeMap.cpp.o.requires

CMakeFiles/a2.dir/src/CubeMap.cpp.o.provides: CMakeFiles/a2.dir/src/CubeMap.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/CubeMap.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/CubeMap.cpp.o.provides

CMakeFiles/a2.dir/src/CubeMap.cpp.o.provides.build: CMakeFiles/a2.dir/src/CubeMap.cpp.o


CMakeFiles/a2.dir/src/Image.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/Image.cpp.o: ../src/Image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/a2.dir/src/Image.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/Image.cpp.o -c /home/jeekzhang/pj/starter2/src/Image.cpp

CMakeFiles/a2.dir/src/Image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/Image.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/Image.cpp > CMakeFiles/a2.dir/src/Image.cpp.i

CMakeFiles/a2.dir/src/Image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/Image.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/Image.cpp -o CMakeFiles/a2.dir/src/Image.cpp.s

CMakeFiles/a2.dir/src/Image.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/Image.cpp.o.requires

CMakeFiles/a2.dir/src/Image.cpp.o.provides: CMakeFiles/a2.dir/src/Image.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/Image.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/Image.cpp.o.provides

CMakeFiles/a2.dir/src/Image.cpp.o.provides.build: CMakeFiles/a2.dir/src/Image.cpp.o


CMakeFiles/a2.dir/src/Light.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/Light.cpp.o: ../src/Light.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/a2.dir/src/Light.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/Light.cpp.o -c /home/jeekzhang/pj/starter2/src/Light.cpp

CMakeFiles/a2.dir/src/Light.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/Light.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/Light.cpp > CMakeFiles/a2.dir/src/Light.cpp.i

CMakeFiles/a2.dir/src/Light.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/Light.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/Light.cpp -o CMakeFiles/a2.dir/src/Light.cpp.s

CMakeFiles/a2.dir/src/Light.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/Light.cpp.o.requires

CMakeFiles/a2.dir/src/Light.cpp.o.provides: CMakeFiles/a2.dir/src/Light.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/Light.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/Light.cpp.o.provides

CMakeFiles/a2.dir/src/Light.cpp.o.provides.build: CMakeFiles/a2.dir/src/Light.cpp.o


CMakeFiles/a2.dir/src/Material.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/Material.cpp.o: ../src/Material.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/a2.dir/src/Material.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/Material.cpp.o -c /home/jeekzhang/pj/starter2/src/Material.cpp

CMakeFiles/a2.dir/src/Material.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/Material.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/Material.cpp > CMakeFiles/a2.dir/src/Material.cpp.i

CMakeFiles/a2.dir/src/Material.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/Material.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/Material.cpp -o CMakeFiles/a2.dir/src/Material.cpp.s

CMakeFiles/a2.dir/src/Material.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/Material.cpp.o.requires

CMakeFiles/a2.dir/src/Material.cpp.o.provides: CMakeFiles/a2.dir/src/Material.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/Material.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/Material.cpp.o.provides

CMakeFiles/a2.dir/src/Material.cpp.o.provides.build: CMakeFiles/a2.dir/src/Material.cpp.o


CMakeFiles/a2.dir/src/Mesh.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/Mesh.cpp.o: ../src/Mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/a2.dir/src/Mesh.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/Mesh.cpp.o -c /home/jeekzhang/pj/starter2/src/Mesh.cpp

CMakeFiles/a2.dir/src/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/Mesh.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/Mesh.cpp > CMakeFiles/a2.dir/src/Mesh.cpp.i

CMakeFiles/a2.dir/src/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/Mesh.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/Mesh.cpp -o CMakeFiles/a2.dir/src/Mesh.cpp.s

CMakeFiles/a2.dir/src/Mesh.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/Mesh.cpp.o.requires

CMakeFiles/a2.dir/src/Mesh.cpp.o.provides: CMakeFiles/a2.dir/src/Mesh.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/Mesh.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/Mesh.cpp.o.provides

CMakeFiles/a2.dir/src/Mesh.cpp.o.provides.build: CMakeFiles/a2.dir/src/Mesh.cpp.o


CMakeFiles/a2.dir/src/Object3D.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/Object3D.cpp.o: ../src/Object3D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/a2.dir/src/Object3D.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/Object3D.cpp.o -c /home/jeekzhang/pj/starter2/src/Object3D.cpp

CMakeFiles/a2.dir/src/Object3D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/Object3D.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/Object3D.cpp > CMakeFiles/a2.dir/src/Object3D.cpp.i

CMakeFiles/a2.dir/src/Object3D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/Object3D.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/Object3D.cpp -o CMakeFiles/a2.dir/src/Object3D.cpp.s

CMakeFiles/a2.dir/src/Object3D.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/Object3D.cpp.o.requires

CMakeFiles/a2.dir/src/Object3D.cpp.o.provides: CMakeFiles/a2.dir/src/Object3D.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/Object3D.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/Object3D.cpp.o.provides

CMakeFiles/a2.dir/src/Object3D.cpp.o.provides.build: CMakeFiles/a2.dir/src/Object3D.cpp.o


CMakeFiles/a2.dir/src/Octree.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/Octree.cpp.o: ../src/Octree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/a2.dir/src/Octree.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/Octree.cpp.o -c /home/jeekzhang/pj/starter2/src/Octree.cpp

CMakeFiles/a2.dir/src/Octree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/Octree.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/Octree.cpp > CMakeFiles/a2.dir/src/Octree.cpp.i

CMakeFiles/a2.dir/src/Octree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/Octree.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/Octree.cpp -o CMakeFiles/a2.dir/src/Octree.cpp.s

CMakeFiles/a2.dir/src/Octree.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/Octree.cpp.o.requires

CMakeFiles/a2.dir/src/Octree.cpp.o.provides: CMakeFiles/a2.dir/src/Octree.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/Octree.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/Octree.cpp.o.provides

CMakeFiles/a2.dir/src/Octree.cpp.o.provides.build: CMakeFiles/a2.dir/src/Octree.cpp.o


CMakeFiles/a2.dir/src/Renderer.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/Renderer.cpp.o: ../src/Renderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/a2.dir/src/Renderer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/Renderer.cpp.o -c /home/jeekzhang/pj/starter2/src/Renderer.cpp

CMakeFiles/a2.dir/src/Renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/Renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/Renderer.cpp > CMakeFiles/a2.dir/src/Renderer.cpp.i

CMakeFiles/a2.dir/src/Renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/Renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/Renderer.cpp -o CMakeFiles/a2.dir/src/Renderer.cpp.s

CMakeFiles/a2.dir/src/Renderer.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/Renderer.cpp.o.requires

CMakeFiles/a2.dir/src/Renderer.cpp.o.provides: CMakeFiles/a2.dir/src/Renderer.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/Renderer.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/Renderer.cpp.o.provides

CMakeFiles/a2.dir/src/Renderer.cpp.o.provides.build: CMakeFiles/a2.dir/src/Renderer.cpp.o


CMakeFiles/a2.dir/src/SceneParser.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/SceneParser.cpp.o: ../src/SceneParser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/a2.dir/src/SceneParser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/SceneParser.cpp.o -c /home/jeekzhang/pj/starter2/src/SceneParser.cpp

CMakeFiles/a2.dir/src/SceneParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/SceneParser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/SceneParser.cpp > CMakeFiles/a2.dir/src/SceneParser.cpp.i

CMakeFiles/a2.dir/src/SceneParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/SceneParser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/SceneParser.cpp -o CMakeFiles/a2.dir/src/SceneParser.cpp.s

CMakeFiles/a2.dir/src/SceneParser.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/SceneParser.cpp.o.requires

CMakeFiles/a2.dir/src/SceneParser.cpp.o.provides: CMakeFiles/a2.dir/src/SceneParser.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/SceneParser.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/SceneParser.cpp.o.provides

CMakeFiles/a2.dir/src/SceneParser.cpp.o.provides.build: CMakeFiles/a2.dir/src/SceneParser.cpp.o


CMakeFiles/a2.dir/src/VecUtils.cpp.o: CMakeFiles/a2.dir/flags.make
CMakeFiles/a2.dir/src/VecUtils.cpp.o: ../src/VecUtils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/a2.dir/src/VecUtils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/a2.dir/src/VecUtils.cpp.o -c /home/jeekzhang/pj/starter2/src/VecUtils.cpp

CMakeFiles/a2.dir/src/VecUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/a2.dir/src/VecUtils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jeekzhang/pj/starter2/src/VecUtils.cpp > CMakeFiles/a2.dir/src/VecUtils.cpp.i

CMakeFiles/a2.dir/src/VecUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/a2.dir/src/VecUtils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jeekzhang/pj/starter2/src/VecUtils.cpp -o CMakeFiles/a2.dir/src/VecUtils.cpp.s

CMakeFiles/a2.dir/src/VecUtils.cpp.o.requires:

.PHONY : CMakeFiles/a2.dir/src/VecUtils.cpp.o.requires

CMakeFiles/a2.dir/src/VecUtils.cpp.o.provides: CMakeFiles/a2.dir/src/VecUtils.cpp.o.requires
	$(MAKE) -f CMakeFiles/a2.dir/build.make CMakeFiles/a2.dir/src/VecUtils.cpp.o.provides.build
.PHONY : CMakeFiles/a2.dir/src/VecUtils.cpp.o.provides

CMakeFiles/a2.dir/src/VecUtils.cpp.o.provides.build: CMakeFiles/a2.dir/src/VecUtils.cpp.o


# Object files for target a2
a2_OBJECTS = \
"CMakeFiles/a2.dir/src/main.cpp.o" \
"CMakeFiles/a2.dir/src/stb.cpp.o" \
"CMakeFiles/a2.dir/src/ArgParser.cpp.o" \
"CMakeFiles/a2.dir/src/Camera.cpp.o" \
"CMakeFiles/a2.dir/src/CubeMap.cpp.o" \
"CMakeFiles/a2.dir/src/Image.cpp.o" \
"CMakeFiles/a2.dir/src/Light.cpp.o" \
"CMakeFiles/a2.dir/src/Material.cpp.o" \
"CMakeFiles/a2.dir/src/Mesh.cpp.o" \
"CMakeFiles/a2.dir/src/Object3D.cpp.o" \
"CMakeFiles/a2.dir/src/Octree.cpp.o" \
"CMakeFiles/a2.dir/src/Renderer.cpp.o" \
"CMakeFiles/a2.dir/src/SceneParser.cpp.o" \
"CMakeFiles/a2.dir/src/VecUtils.cpp.o"

# External object files for target a2
a2_EXTERNAL_OBJECTS =

a2: CMakeFiles/a2.dir/src/main.cpp.o
a2: CMakeFiles/a2.dir/src/stb.cpp.o
a2: CMakeFiles/a2.dir/src/ArgParser.cpp.o
a2: CMakeFiles/a2.dir/src/Camera.cpp.o
a2: CMakeFiles/a2.dir/src/CubeMap.cpp.o
a2: CMakeFiles/a2.dir/src/Image.cpp.o
a2: CMakeFiles/a2.dir/src/Light.cpp.o
a2: CMakeFiles/a2.dir/src/Material.cpp.o
a2: CMakeFiles/a2.dir/src/Mesh.cpp.o
a2: CMakeFiles/a2.dir/src/Object3D.cpp.o
a2: CMakeFiles/a2.dir/src/Octree.cpp.o
a2: CMakeFiles/a2.dir/src/Renderer.cpp.o
a2: CMakeFiles/a2.dir/src/SceneParser.cpp.o
a2: CMakeFiles/a2.dir/src/VecUtils.cpp.o
a2: CMakeFiles/a2.dir/build.make
a2: vecmath/libvecmath.a
a2: CMakeFiles/a2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jeekzhang/pj/starter2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable a2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/a2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/a2.dir/build: a2

.PHONY : CMakeFiles/a2.dir/build

CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/main.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/stb.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/ArgParser.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/Camera.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/CubeMap.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/Image.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/Light.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/Material.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/Mesh.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/Object3D.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/Octree.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/Renderer.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/SceneParser.cpp.o.requires
CMakeFiles/a2.dir/requires: CMakeFiles/a2.dir/src/VecUtils.cpp.o.requires

.PHONY : CMakeFiles/a2.dir/requires

CMakeFiles/a2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/a2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/a2.dir/clean

CMakeFiles/a2.dir/depend:
	cd /home/jeekzhang/pj/starter2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jeekzhang/pj/starter2 /home/jeekzhang/pj/starter2 /home/jeekzhang/pj/starter2/build /home/jeekzhang/pj/starter2/build /home/jeekzhang/pj/starter2/build/CMakeFiles/a2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/a2.dir/depend

