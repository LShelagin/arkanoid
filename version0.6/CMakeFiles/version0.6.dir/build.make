# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\cmake\bin\cmake.exe

# The command to remove a file.
RM = E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\cmake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6

# Include any dependencies generated for this target.
include CMakeFiles/version0.6.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/version0.6.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/version0.6.dir/flags.make

CMakeFiles/version0.6.dir/main.cpp.obj: CMakeFiles/version0.6.dir/flags.make
CMakeFiles/version0.6.dir/main.cpp.obj: CMakeFiles/version0.6.dir/includes_CXX.rsp
CMakeFiles/version0.6.dir/main.cpp.obj: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/version0.6.dir/main.cpp.obj"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\version0.6.dir\main.cpp.obj -c E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\main.cpp

CMakeFiles/version0.6.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version0.6.dir/main.cpp.i"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\main.cpp > CMakeFiles\version0.6.dir\main.cpp.i

CMakeFiles/version0.6.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version0.6.dir/main.cpp.s"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\main.cpp -o CMakeFiles\version0.6.dir\main.cpp.s

CMakeFiles/version0.6.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/version0.6.dir/main.cpp.obj.requires

CMakeFiles/version0.6.dir/main.cpp.obj.provides: CMakeFiles/version0.6.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\version0.6.dir\build.make CMakeFiles/version0.6.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/version0.6.dir/main.cpp.obj.provides

CMakeFiles/version0.6.dir/main.cpp.obj.provides.build: CMakeFiles/version0.6.dir/main.cpp.obj


CMakeFiles/version0.6.dir/paddle.cpp.obj: CMakeFiles/version0.6.dir/flags.make
CMakeFiles/version0.6.dir/paddle.cpp.obj: CMakeFiles/version0.6.dir/includes_CXX.rsp
CMakeFiles/version0.6.dir/paddle.cpp.obj: paddle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/version0.6.dir/paddle.cpp.obj"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\version0.6.dir\paddle.cpp.obj -c E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\paddle.cpp

CMakeFiles/version0.6.dir/paddle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version0.6.dir/paddle.cpp.i"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\paddle.cpp > CMakeFiles\version0.6.dir\paddle.cpp.i

CMakeFiles/version0.6.dir/paddle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version0.6.dir/paddle.cpp.s"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\paddle.cpp -o CMakeFiles\version0.6.dir\paddle.cpp.s

CMakeFiles/version0.6.dir/paddle.cpp.obj.requires:

.PHONY : CMakeFiles/version0.6.dir/paddle.cpp.obj.requires

CMakeFiles/version0.6.dir/paddle.cpp.obj.provides: CMakeFiles/version0.6.dir/paddle.cpp.obj.requires
	$(MAKE) -f CMakeFiles\version0.6.dir\build.make CMakeFiles/version0.6.dir/paddle.cpp.obj.provides.build
.PHONY : CMakeFiles/version0.6.dir/paddle.cpp.obj.provides

CMakeFiles/version0.6.dir/paddle.cpp.obj.provides.build: CMakeFiles/version0.6.dir/paddle.cpp.obj


CMakeFiles/version0.6.dir/ball.cpp.obj: CMakeFiles/version0.6.dir/flags.make
CMakeFiles/version0.6.dir/ball.cpp.obj: CMakeFiles/version0.6.dir/includes_CXX.rsp
CMakeFiles/version0.6.dir/ball.cpp.obj: ball.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/version0.6.dir/ball.cpp.obj"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\version0.6.dir\ball.cpp.obj -c E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\ball.cpp

CMakeFiles/version0.6.dir/ball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version0.6.dir/ball.cpp.i"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\ball.cpp > CMakeFiles\version0.6.dir\ball.cpp.i

CMakeFiles/version0.6.dir/ball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version0.6.dir/ball.cpp.s"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\ball.cpp -o CMakeFiles\version0.6.dir\ball.cpp.s

CMakeFiles/version0.6.dir/ball.cpp.obj.requires:

.PHONY : CMakeFiles/version0.6.dir/ball.cpp.obj.requires

CMakeFiles/version0.6.dir/ball.cpp.obj.provides: CMakeFiles/version0.6.dir/ball.cpp.obj.requires
	$(MAKE) -f CMakeFiles\version0.6.dir\build.make CMakeFiles/version0.6.dir/ball.cpp.obj.provides.build
.PHONY : CMakeFiles/version0.6.dir/ball.cpp.obj.provides

CMakeFiles/version0.6.dir/ball.cpp.obj.provides.build: CMakeFiles/version0.6.dir/ball.cpp.obj


CMakeFiles/version0.6.dir/background.cpp.obj: CMakeFiles/version0.6.dir/flags.make
CMakeFiles/version0.6.dir/background.cpp.obj: CMakeFiles/version0.6.dir/includes_CXX.rsp
CMakeFiles/version0.6.dir/background.cpp.obj: background.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/version0.6.dir/background.cpp.obj"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\version0.6.dir\background.cpp.obj -c E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\background.cpp

CMakeFiles/version0.6.dir/background.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version0.6.dir/background.cpp.i"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\background.cpp > CMakeFiles\version0.6.dir\background.cpp.i

CMakeFiles/version0.6.dir/background.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version0.6.dir/background.cpp.s"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\background.cpp -o CMakeFiles\version0.6.dir\background.cpp.s

CMakeFiles/version0.6.dir/background.cpp.obj.requires:

.PHONY : CMakeFiles/version0.6.dir/background.cpp.obj.requires

CMakeFiles/version0.6.dir/background.cpp.obj.provides: CMakeFiles/version0.6.dir/background.cpp.obj.requires
	$(MAKE) -f CMakeFiles\version0.6.dir\build.make CMakeFiles/version0.6.dir/background.cpp.obj.provides.build
.PHONY : CMakeFiles/version0.6.dir/background.cpp.obj.provides

CMakeFiles/version0.6.dir/background.cpp.obj.provides.build: CMakeFiles/version0.6.dir/background.cpp.obj


CMakeFiles/version0.6.dir/gamestatus.cpp.obj: CMakeFiles/version0.6.dir/flags.make
CMakeFiles/version0.6.dir/gamestatus.cpp.obj: CMakeFiles/version0.6.dir/includes_CXX.rsp
CMakeFiles/version0.6.dir/gamestatus.cpp.obj: gamestatus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/version0.6.dir/gamestatus.cpp.obj"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\version0.6.dir\gamestatus.cpp.obj -c E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\gamestatus.cpp

CMakeFiles/version0.6.dir/gamestatus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version0.6.dir/gamestatus.cpp.i"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\gamestatus.cpp > CMakeFiles\version0.6.dir\gamestatus.cpp.i

CMakeFiles/version0.6.dir/gamestatus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version0.6.dir/gamestatus.cpp.s"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\gamestatus.cpp -o CMakeFiles\version0.6.dir\gamestatus.cpp.s

CMakeFiles/version0.6.dir/gamestatus.cpp.obj.requires:

.PHONY : CMakeFiles/version0.6.dir/gamestatus.cpp.obj.requires

CMakeFiles/version0.6.dir/gamestatus.cpp.obj.provides: CMakeFiles/version0.6.dir/gamestatus.cpp.obj.requires
	$(MAKE) -f CMakeFiles\version0.6.dir\build.make CMakeFiles/version0.6.dir/gamestatus.cpp.obj.provides.build
.PHONY : CMakeFiles/version0.6.dir/gamestatus.cpp.obj.provides

CMakeFiles/version0.6.dir/gamestatus.cpp.obj.provides.build: CMakeFiles/version0.6.dir/gamestatus.cpp.obj


CMakeFiles/version0.6.dir/gamescene.cpp.obj: CMakeFiles/version0.6.dir/flags.make
CMakeFiles/version0.6.dir/gamescene.cpp.obj: CMakeFiles/version0.6.dir/includes_CXX.rsp
CMakeFiles/version0.6.dir/gamescene.cpp.obj: gamescene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/version0.6.dir/gamescene.cpp.obj"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\version0.6.dir\gamescene.cpp.obj -c E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\gamescene.cpp

CMakeFiles/version0.6.dir/gamescene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/version0.6.dir/gamescene.cpp.i"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\gamescene.cpp > CMakeFiles\version0.6.dir\gamescene.cpp.i

CMakeFiles/version0.6.dir/gamescene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/version0.6.dir/gamescene.cpp.s"
	E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\gamescene.cpp -o CMakeFiles\version0.6.dir\gamescene.cpp.s

CMakeFiles/version0.6.dir/gamescene.cpp.obj.requires:

.PHONY : CMakeFiles/version0.6.dir/gamescene.cpp.obj.requires

CMakeFiles/version0.6.dir/gamescene.cpp.obj.provides: CMakeFiles/version0.6.dir/gamescene.cpp.obj.requires
	$(MAKE) -f CMakeFiles\version0.6.dir\build.make CMakeFiles/version0.6.dir/gamescene.cpp.obj.provides.build
.PHONY : CMakeFiles/version0.6.dir/gamescene.cpp.obj.provides

CMakeFiles/version0.6.dir/gamescene.cpp.obj.provides.build: CMakeFiles/version0.6.dir/gamescene.cpp.obj


# Object files for target version0.6
version0_6_OBJECTS = \
"CMakeFiles/version0.6.dir/main.cpp.obj" \
"CMakeFiles/version0.6.dir/paddle.cpp.obj" \
"CMakeFiles/version0.6.dir/ball.cpp.obj" \
"CMakeFiles/version0.6.dir/background.cpp.obj" \
"CMakeFiles/version0.6.dir/gamestatus.cpp.obj" \
"CMakeFiles/version0.6.dir/gamescene.cpp.obj"

# External object files for target version0.6
version0_6_EXTERNAL_OBJECTS =

version0.6.exe: CMakeFiles/version0.6.dir/main.cpp.obj
version0.6.exe: CMakeFiles/version0.6.dir/paddle.cpp.obj
version0.6.exe: CMakeFiles/version0.6.dir/ball.cpp.obj
version0.6.exe: CMakeFiles/version0.6.dir/background.cpp.obj
version0.6.exe: CMakeFiles/version0.6.dir/gamestatus.cpp.obj
version0.6.exe: CMakeFiles/version0.6.dir/gamescene.cpp.obj
version0.6.exe: CMakeFiles/version0.6.dir/build.make
version0.6.exe: E:/PGTU/OEVMiA/OEVM/CppDistro/CppDistro/MinGW/lib/libsfml-window-s.a
version0.6.exe: E:/PGTU/OEVMiA/OEVM/CppDistro/CppDistro/MinGW/lib/libsfml-graphics-s.a
version0.6.exe: E:/PGTU/OEVMiA/OEVM/CppDistro/CppDistro/MinGW/lib/libsfml-system-s.a
version0.6.exe: E:/PGTU/OEVMiA/OEVM/CppDistro/CppDistro/MinGW/lib/libfreetype.a
version0.6.exe: E:/PGTU/OEVMiA/OEVM/CppDistro/CppDistro/MinGW/lib/libjpeg.a
version0.6.exe: CMakeFiles/version0.6.dir/linklibs.rsp
version0.6.exe: CMakeFiles/version0.6.dir/objects1.rsp
version0.6.exe: CMakeFiles/version0.6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable version0.6.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\version0.6.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/version0.6.dir/build: version0.6.exe

.PHONY : CMakeFiles/version0.6.dir/build

CMakeFiles/version0.6.dir/requires: CMakeFiles/version0.6.dir/main.cpp.obj.requires
CMakeFiles/version0.6.dir/requires: CMakeFiles/version0.6.dir/paddle.cpp.obj.requires
CMakeFiles/version0.6.dir/requires: CMakeFiles/version0.6.dir/ball.cpp.obj.requires
CMakeFiles/version0.6.dir/requires: CMakeFiles/version0.6.dir/background.cpp.obj.requires
CMakeFiles/version0.6.dir/requires: CMakeFiles/version0.6.dir/gamestatus.cpp.obj.requires
CMakeFiles/version0.6.dir/requires: CMakeFiles/version0.6.dir/gamescene.cpp.obj.requires

.PHONY : CMakeFiles/version0.6.dir/requires

CMakeFiles/version0.6.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\version0.6.dir\cmake_clean.cmake
.PHONY : CMakeFiles/version0.6.dir/clean

CMakeFiles/version0.6.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6 E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6 E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6 E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6 E:\PGTU\OEVMiA\OEVM\CppDistro\CppDistro\game\version0.6\CMakeFiles\version0.6.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/version0.6.dir/depend
