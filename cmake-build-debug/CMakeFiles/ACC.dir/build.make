# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /home/sd/CLion-2021.2/clion-2021.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/sd/CLion-2021.2/clion-2021.2/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sd/ACC_v09/ACC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sd/ACC_v09/ACC/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ACC.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/ACC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ACC.dir/flags.make

CMakeFiles/ACC.dir/src/AST.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/AST.c.o: ../src/AST.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ACC.dir/src/AST.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/AST.c.o -c /home/sd/ACC_v09/ACC/src/AST.c

CMakeFiles/ACC.dir/src/AST.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/AST.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/AST.c > CMakeFiles/ACC.dir/src/AST.c.i

CMakeFiles/ACC.dir/src/AST.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/AST.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/AST.c -o CMakeFiles/ACC.dir/src/AST.c.s

CMakeFiles/ACC.dir/src/Arith.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Arith.c.o: ../src/Arith.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/ACC.dir/src/Arith.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Arith.c.o -c /home/sd/ACC_v09/ACC/src/Arith.c

CMakeFiles/ACC.dir/src/Arith.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Arith.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Arith.c > CMakeFiles/ACC.dir/src/Arith.c.i

CMakeFiles/ACC.dir/src/Arith.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Arith.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Arith.c -o CMakeFiles/ACC.dir/src/Arith.c.s

CMakeFiles/ACC.dir/src/Bodies.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Bodies.c.o: ../src/Bodies.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ACC.dir/src/Bodies.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Bodies.c.o -c /home/sd/ACC_v09/ACC/src/Bodies.c

CMakeFiles/ACC.dir/src/Bodies.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Bodies.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Bodies.c > CMakeFiles/ACC.dir/src/Bodies.c.i

CMakeFiles/ACC.dir/src/Bodies.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Bodies.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Bodies.c -o CMakeFiles/ACC.dir/src/Bodies.c.s

CMakeFiles/ACC.dir/src/Coder.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Coder.c.o: ../src/Coder.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/ACC.dir/src/Coder.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Coder.c.o -c /home/sd/ACC_v09/ACC/src/Coder.c

CMakeFiles/ACC.dir/src/Coder.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Coder.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Coder.c > CMakeFiles/ACC.dir/src/Coder.c.i

CMakeFiles/ACC.dir/src/Coder.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Coder.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Coder.c -o CMakeFiles/ACC.dir/src/Coder.c.s

CMakeFiles/ACC.dir/src/Decls.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Decls.c.o: ../src/Decls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/ACC.dir/src/Decls.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Decls.c.o -c /home/sd/ACC_v09/ACC/src/Decls.c

CMakeFiles/ACC.dir/src/Decls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Decls.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Decls.c > CMakeFiles/ACC.dir/src/Decls.c.i

CMakeFiles/ACC.dir/src/Decls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Decls.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Decls.c -o CMakeFiles/ACC.dir/src/Decls.c.s

CMakeFiles/ACC.dir/src/DefTab.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/DefTab.c.o: ../src/DefTab.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/ACC.dir/src/DefTab.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/DefTab.c.o -c /home/sd/ACC_v09/ACC/src/DefTab.c

CMakeFiles/ACC.dir/src/DefTab.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/DefTab.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/DefTab.c > CMakeFiles/ACC.dir/src/DefTab.c.i

CMakeFiles/ACC.dir/src/DefTab.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/DefTab.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/DefTab.c -o CMakeFiles/ACC.dir/src/DefTab.c.s

CMakeFiles/ACC.dir/src/Error.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Error.c.o: ../src/Error.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/ACC.dir/src/Error.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Error.c.o -c /home/sd/ACC_v09/ACC/src/Error.c

CMakeFiles/ACC.dir/src/Error.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Error.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Error.c > CMakeFiles/ACC.dir/src/Error.c.i

CMakeFiles/ACC.dir/src/Error.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Error.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Error.c -o CMakeFiles/ACC.dir/src/Error.c.s

CMakeFiles/ACC.dir/src/IR.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/IR.c.o: ../src/IR.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/ACC.dir/src/IR.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/IR.c.o -c /home/sd/ACC_v09/ACC/src/IR.c

CMakeFiles/ACC.dir/src/IR.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/IR.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/IR.c > CMakeFiles/ACC.dir/src/IR.c.i

CMakeFiles/ACC.dir/src/IR.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/IR.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/IR.c -o CMakeFiles/ACC.dir/src/IR.c.s

CMakeFiles/ACC.dir/src/Mapping.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Mapping.c.o: ../src/Mapping.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/ACC.dir/src/Mapping.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Mapping.c.o -c /home/sd/ACC_v09/ACC/src/Mapping.c

CMakeFiles/ACC.dir/src/Mapping.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Mapping.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Mapping.c > CMakeFiles/ACC.dir/src/Mapping.c.i

CMakeFiles/ACC.dir/src/Mapping.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Mapping.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Mapping.c -o CMakeFiles/ACC.dir/src/Mapping.c.s

CMakeFiles/ACC.dir/src/Parse.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Parse.c.o: ../src/Parse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/ACC.dir/src/Parse.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Parse.c.o -c /home/sd/ACC_v09/ACC/src/Parse.c

CMakeFiles/ACC.dir/src/Parse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Parse.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Parse.c > CMakeFiles/ACC.dir/src/Parse.c.i

CMakeFiles/ACC.dir/src/Parse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Parse.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Parse.c -o CMakeFiles/ACC.dir/src/Parse.c.s

CMakeFiles/ACC.dir/src/Scanning.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Scanning.c.o: ../src/Scanning.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/ACC.dir/src/Scanning.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Scanning.c.o -c /home/sd/ACC_v09/ACC/src/Scanning.c

CMakeFiles/ACC.dir/src/Scanning.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Scanning.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Scanning.c > CMakeFiles/ACC.dir/src/Scanning.c.i

CMakeFiles/ACC.dir/src/Scanning.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Scanning.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Scanning.c -o CMakeFiles/ACC.dir/src/Scanning.c.s

CMakeFiles/ACC.dir/src/Semantic.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Semantic.c.o: ../src/Semantic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/ACC.dir/src/Semantic.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Semantic.c.o -c /home/sd/ACC_v09/ACC/src/Semantic.c

CMakeFiles/ACC.dir/src/Semantic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Semantic.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Semantic.c > CMakeFiles/ACC.dir/src/Semantic.c.i

CMakeFiles/ACC.dir/src/Semantic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Semantic.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Semantic.c -o CMakeFiles/ACC.dir/src/Semantic.c.s

CMakeFiles/ACC.dir/src/Types.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Types.c.o: ../src/Types.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/ACC.dir/src/Types.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Types.c.o -c /home/sd/ACC_v09/ACC/src/Types.c

CMakeFiles/ACC.dir/src/Types.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Types.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Types.c > CMakeFiles/ACC.dir/src/Types.c.i

CMakeFiles/ACC.dir/src/Types.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Types.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Types.c -o CMakeFiles/ACC.dir/src/Types.c.s

CMakeFiles/ACC.dir/src/Unparse.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Unparse.c.o: ../src/Unparse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/ACC.dir/src/Unparse.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Unparse.c.o -c /home/sd/ACC_v09/ACC/src/Unparse.c

CMakeFiles/ACC.dir/src/Unparse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Unparse.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Unparse.c > CMakeFiles/ACC.dir/src/Unparse.c.i

CMakeFiles/ACC.dir/src/Unparse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Unparse.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Unparse.c -o CMakeFiles/ACC.dir/src/Unparse.c.s

CMakeFiles/ACC.dir/src/Weave.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/Weave.c.o: ../src/Weave.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/ACC.dir/src/Weave.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/Weave.c.o -c /home/sd/ACC_v09/ACC/src/Weave.c

CMakeFiles/ACC.dir/src/Weave.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/Weave.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/Weave.c > CMakeFiles/ACC.dir/src/Weave.c.i

CMakeFiles/ACC.dir/src/Weave.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/Weave.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/Weave.c -o CMakeFiles/ACC.dir/src/Weave.c.s

CMakeFiles/ACC.dir/src/XARITH.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/XARITH.c.o: ../src/XARITH.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/ACC.dir/src/XARITH.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/XARITH.c.o -c /home/sd/ACC_v09/ACC/src/XARITH.c

CMakeFiles/ACC.dir/src/XARITH.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/XARITH.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/XARITH.c > CMakeFiles/ACC.dir/src/XARITH.c.i

CMakeFiles/ACC.dir/src/XARITH.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/XARITH.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/XARITH.c -o CMakeFiles/ACC.dir/src/XARITH.c.s

CMakeFiles/ACC.dir/src/XCODER.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/XCODER.c.o: ../src/XCODER.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/ACC.dir/src/XCODER.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/XCODER.c.o -c /home/sd/ACC_v09/ACC/src/XCODER.c

CMakeFiles/ACC.dir/src/XCODER.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/XCODER.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/XCODER.c > CMakeFiles/ACC.dir/src/XCODER.c.i

CMakeFiles/ACC.dir/src/XCODER.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/XCODER.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/XCODER.c -o CMakeFiles/ACC.dir/src/XCODER.c.s

CMakeFiles/ACC.dir/src/grts.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/grts.c.o: ../src/grts.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/ACC.dir/src/grts.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/grts.c.o -c /home/sd/ACC_v09/ACC/src/grts.c

CMakeFiles/ACC.dir/src/grts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/grts.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/grts.c > CMakeFiles/ACC.dir/src/grts.c.i

CMakeFiles/ACC.dir/src/grts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/grts.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/grts.c -o CMakeFiles/ACC.dir/src/grts.c.s

CMakeFiles/ACC.dir/src/lexer.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/lexer.c.o: ../src/lexer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/ACC.dir/src/lexer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/lexer.c.o -c /home/sd/ACC_v09/ACC/src/lexer.c

CMakeFiles/ACC.dir/src/lexer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/lexer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/lexer.c > CMakeFiles/ACC.dir/src/lexer.c.i

CMakeFiles/ACC.dir/src/lexer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/lexer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/lexer.c -o CMakeFiles/ACC.dir/src/lexer.c.s

CMakeFiles/ACC.dir/src/libacc.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/libacc.c.o: ../src/libacc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/ACC.dir/src/libacc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/libacc.c.o -c /home/sd/ACC_v09/ACC/src/libacc.c

CMakeFiles/ACC.dir/src/libacc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/libacc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/libacc.c > CMakeFiles/ACC.dir/src/libacc.c.i

CMakeFiles/ACC.dir/src/libacc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/libacc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/libacc.c -o CMakeFiles/ACC.dir/src/libacc.c.s

CMakeFiles/ACC.dir/src/main.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building C object CMakeFiles/ACC.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/main.c.o -c /home/sd/ACC_v09/ACC/src/main.c

CMakeFiles/ACC.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/main.c > CMakeFiles/ACC.dir/src/main.c.i

CMakeFiles/ACC.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/main.c -o CMakeFiles/ACC.dir/src/main.c.s

CMakeFiles/ACC.dir/src/output.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/output.c.o: ../src/output.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building C object CMakeFiles/ACC.dir/src/output.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/output.c.o -c /home/sd/ACC_v09/ACC/src/output.c

CMakeFiles/ACC.dir/src/output.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/output.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/output.c > CMakeFiles/ACC.dir/src/output.c.i

CMakeFiles/ACC.dir/src/output.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/output.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/output.c -o CMakeFiles/ACC.dir/src/output.c.s

CMakeFiles/ACC.dir/src/pointcut.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/pointcut.c.o: ../src/pointcut.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Building C object CMakeFiles/ACC.dir/src/pointcut.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/pointcut.c.o -c /home/sd/ACC_v09/ACC/src/pointcut.c

CMakeFiles/ACC.dir/src/pointcut.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/pointcut.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/pointcut.c > CMakeFiles/ACC.dir/src/pointcut.c.i

CMakeFiles/ACC.dir/src/pointcut.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/pointcut.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/pointcut.c -o CMakeFiles/ACC.dir/src/pointcut.c.s

CMakeFiles/ACC.dir/src/symboltable.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/symboltable.c.o: ../src/symboltable.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Building C object CMakeFiles/ACC.dir/src/symboltable.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/symboltable.c.o -c /home/sd/ACC_v09/ACC/src/symboltable.c

CMakeFiles/ACC.dir/src/symboltable.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/symboltable.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/symboltable.c > CMakeFiles/ACC.dir/src/symboltable.c.i

CMakeFiles/ACC.dir/src/symboltable.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/symboltable.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/symboltable.c -o CMakeFiles/ACC.dir/src/symboltable.c.s

CMakeFiles/ACC.dir/src/weaveutil.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/weaveutil.c.o: ../src/weaveutil.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_25) "Building C object CMakeFiles/ACC.dir/src/weaveutil.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/weaveutil.c.o -c /home/sd/ACC_v09/ACC/src/weaveutil.c

CMakeFiles/ACC.dir/src/weaveutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/weaveutil.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/weaveutil.c > CMakeFiles/ACC.dir/src/weaveutil.c.i

CMakeFiles/ACC.dir/src/weaveutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/weaveutil.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/weaveutil.c -o CMakeFiles/ACC.dir/src/weaveutil.c.s

CMakeFiles/ACC.dir/src/xerror.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/xerror.c.o: ../src/xerror.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_26) "Building C object CMakeFiles/ACC.dir/src/xerror.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/xerror.c.o -c /home/sd/ACC_v09/ACC/src/xerror.c

CMakeFiles/ACC.dir/src/xerror.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/xerror.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/xerror.c > CMakeFiles/ACC.dir/src/xerror.c.i

CMakeFiles/ACC.dir/src/xerror.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/xerror.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/xerror.c -o CMakeFiles/ACC.dir/src/xerror.c.s

CMakeFiles/ACC.dir/src/y.tab.c.o: CMakeFiles/ACC.dir/flags.make
CMakeFiles/ACC.dir/src/y.tab.c.o: ../src/y.tab.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_27) "Building C object CMakeFiles/ACC.dir/src/y.tab.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ACC.dir/src/y.tab.c.o -c /home/sd/ACC_v09/ACC/src/y.tab.c

CMakeFiles/ACC.dir/src/y.tab.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ACC.dir/src/y.tab.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sd/ACC_v09/ACC/src/y.tab.c > CMakeFiles/ACC.dir/src/y.tab.c.i

CMakeFiles/ACC.dir/src/y.tab.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ACC.dir/src/y.tab.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sd/ACC_v09/ACC/src/y.tab.c -o CMakeFiles/ACC.dir/src/y.tab.c.s

# Object files for target ACC
ACC_OBJECTS = \
"CMakeFiles/ACC.dir/src/AST.c.o" \
"CMakeFiles/ACC.dir/src/Arith.c.o" \
"CMakeFiles/ACC.dir/src/Bodies.c.o" \
"CMakeFiles/ACC.dir/src/Coder.c.o" \
"CMakeFiles/ACC.dir/src/Decls.c.o" \
"CMakeFiles/ACC.dir/src/DefTab.c.o" \
"CMakeFiles/ACC.dir/src/Error.c.o" \
"CMakeFiles/ACC.dir/src/IR.c.o" \
"CMakeFiles/ACC.dir/src/Mapping.c.o" \
"CMakeFiles/ACC.dir/src/Parse.c.o" \
"CMakeFiles/ACC.dir/src/Scanning.c.o" \
"CMakeFiles/ACC.dir/src/Semantic.c.o" \
"CMakeFiles/ACC.dir/src/Types.c.o" \
"CMakeFiles/ACC.dir/src/Unparse.c.o" \
"CMakeFiles/ACC.dir/src/Weave.c.o" \
"CMakeFiles/ACC.dir/src/XARITH.c.o" \
"CMakeFiles/ACC.dir/src/XCODER.c.o" \
"CMakeFiles/ACC.dir/src/grts.c.o" \
"CMakeFiles/ACC.dir/src/lexer.c.o" \
"CMakeFiles/ACC.dir/src/libacc.c.o" \
"CMakeFiles/ACC.dir/src/main.c.o" \
"CMakeFiles/ACC.dir/src/output.c.o" \
"CMakeFiles/ACC.dir/src/pointcut.c.o" \
"CMakeFiles/ACC.dir/src/symboltable.c.o" \
"CMakeFiles/ACC.dir/src/weaveutil.c.o" \
"CMakeFiles/ACC.dir/src/xerror.c.o" \
"CMakeFiles/ACC.dir/src/y.tab.c.o"

# External object files for target ACC
ACC_EXTERNAL_OBJECTS =

ACC: CMakeFiles/ACC.dir/src/AST.c.o
ACC: CMakeFiles/ACC.dir/src/Arith.c.o
ACC: CMakeFiles/ACC.dir/src/Bodies.c.o
ACC: CMakeFiles/ACC.dir/src/Coder.c.o
ACC: CMakeFiles/ACC.dir/src/Decls.c.o
ACC: CMakeFiles/ACC.dir/src/DefTab.c.o
ACC: CMakeFiles/ACC.dir/src/Error.c.o
ACC: CMakeFiles/ACC.dir/src/IR.c.o
ACC: CMakeFiles/ACC.dir/src/Mapping.c.o
ACC: CMakeFiles/ACC.dir/src/Parse.c.o
ACC: CMakeFiles/ACC.dir/src/Scanning.c.o
ACC: CMakeFiles/ACC.dir/src/Semantic.c.o
ACC: CMakeFiles/ACC.dir/src/Types.c.o
ACC: CMakeFiles/ACC.dir/src/Unparse.c.o
ACC: CMakeFiles/ACC.dir/src/Weave.c.o
ACC: CMakeFiles/ACC.dir/src/XARITH.c.o
ACC: CMakeFiles/ACC.dir/src/XCODER.c.o
ACC: CMakeFiles/ACC.dir/src/grts.c.o
ACC: CMakeFiles/ACC.dir/src/lexer.c.o
ACC: CMakeFiles/ACC.dir/src/libacc.c.o
ACC: CMakeFiles/ACC.dir/src/main.c.o
ACC: CMakeFiles/ACC.dir/src/output.c.o
ACC: CMakeFiles/ACC.dir/src/pointcut.c.o
ACC: CMakeFiles/ACC.dir/src/symboltable.c.o
ACC: CMakeFiles/ACC.dir/src/weaveutil.c.o
ACC: CMakeFiles/ACC.dir/src/xerror.c.o
ACC: CMakeFiles/ACC.dir/src/y.tab.c.o
ACC: CMakeFiles/ACC.dir/build.make
ACC: CMakeFiles/ACC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_28) "Linking C executable ACC"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ACC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ACC.dir/build: ACC
.PHONY : CMakeFiles/ACC.dir/build

CMakeFiles/ACC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ACC.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ACC.dir/clean

CMakeFiles/ACC.dir/depend:
	cd /home/sd/ACC_v09/ACC/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sd/ACC_v09/ACC /home/sd/ACC_v09/ACC /home/sd/ACC_v09/ACC/cmake-build-debug /home/sd/ACC_v09/ACC/cmake-build-debug /home/sd/ACC_v09/ACC/cmake-build-debug/CMakeFiles/ACC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ACC.dir/depend

