# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\HPC\AppData\Local\Programs\CLion\bin\cmake\win\x64\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\HPC\AppData\Local\Programs\CLion\bin\cmake\win\x64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Zohar\University\Defensive\Multi\Maman14\server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/server.cpp.obj: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/server.cpp.obj: CMakeFiles/server.dir/includes_CXX.rsp
CMakeFiles/server.dir/server.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman14/server/server.cpp
CMakeFiles/server.dir/server.cpp.obj: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/server.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/server.cpp.obj -MF CMakeFiles\server.dir\server.cpp.obj.d -o CMakeFiles\server.dir\server.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman14\server\server.cpp

CMakeFiles/server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/server.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman14\server\server.cpp > CMakeFiles\server.dir\server.cpp.i

CMakeFiles/server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/server.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman14\server\server.cpp -o CMakeFiles\server.dir\server.cpp.s

CMakeFiles/server.dir/utils/fs.cpp.obj: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/utils/fs.cpp.obj: CMakeFiles/server.dir/includes_CXX.rsp
CMakeFiles/server.dir/utils/fs.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman14/server/utils/fs.cpp
CMakeFiles/server.dir/utils/fs.cpp.obj: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/utils/fs.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/utils/fs.cpp.obj -MF CMakeFiles\server.dir\utils\fs.cpp.obj.d -o CMakeFiles\server.dir\utils\fs.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman14\server\utils\fs.cpp

CMakeFiles/server.dir/utils/fs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/utils/fs.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman14\server\utils\fs.cpp > CMakeFiles\server.dir\utils\fs.cpp.i

CMakeFiles/server.dir/utils/fs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/utils/fs.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman14\server\utils\fs.cpp -o CMakeFiles\server.dir\utils\fs.cpp.s

CMakeFiles/server.dir/models/request.cpp.obj: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/models/request.cpp.obj: CMakeFiles/server.dir/includes_CXX.rsp
CMakeFiles/server.dir/models/request.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman14/server/models/request.cpp
CMakeFiles/server.dir/models/request.cpp.obj: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/models/request.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/models/request.cpp.obj -MF CMakeFiles\server.dir\models\request.cpp.obj.d -o CMakeFiles\server.dir\models\request.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman14\server\models\request.cpp

CMakeFiles/server.dir/models/request.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/models/request.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman14\server\models\request.cpp > CMakeFiles\server.dir\models\request.cpp.i

CMakeFiles/server.dir/models/request.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/models/request.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman14\server\models\request.cpp -o CMakeFiles\server.dir\models\request.cpp.s

CMakeFiles/server.dir/models/response.cpp.obj: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/models/response.cpp.obj: CMakeFiles/server.dir/includes_CXX.rsp
CMakeFiles/server.dir/models/response.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman14/server/models/response.cpp
CMakeFiles/server.dir/models/response.cpp.obj: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/server.dir/models/response.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/models/response.cpp.obj -MF CMakeFiles\server.dir\models\response.cpp.obj.d -o CMakeFiles\server.dir\models\response.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman14\server\models\response.cpp

CMakeFiles/server.dir/models/response.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/models/response.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman14\server\models\response.cpp > CMakeFiles\server.dir\models\response.cpp.i

CMakeFiles/server.dir/models/response.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/models/response.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman14\server\models\response.cpp -o CMakeFiles\server.dir\models\response.cpp.s

CMakeFiles/server.dir/utils/serialize.cpp.obj: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/utils/serialize.cpp.obj: CMakeFiles/server.dir/includes_CXX.rsp
CMakeFiles/server.dir/utils/serialize.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman14/server/utils/serialize.cpp
CMakeFiles/server.dir/utils/serialize.cpp.obj: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/server.dir/utils/serialize.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/utils/serialize.cpp.obj -MF CMakeFiles\server.dir\utils\serialize.cpp.obj.d -o CMakeFiles\server.dir\utils\serialize.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman14\server\utils\serialize.cpp

CMakeFiles/server.dir/utils/serialize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/server.dir/utils/serialize.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman14\server\utils\serialize.cpp > CMakeFiles\server.dir\utils\serialize.cpp.i

CMakeFiles/server.dir/utils/serialize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/server.dir/utils/serialize.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman14\server\utils\serialize.cpp -o CMakeFiles\server.dir\utils\serialize.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/server.cpp.obj" \
"CMakeFiles/server.dir/utils/fs.cpp.obj" \
"CMakeFiles/server.dir/models/request.cpp.obj" \
"CMakeFiles/server.dir/models/response.cpp.obj" \
"CMakeFiles/server.dir/utils/serialize.cpp.obj"

# External object files for target server
server_EXTERNAL_OBJECTS =

server.exe: CMakeFiles/server.dir/server.cpp.obj
server.exe: CMakeFiles/server.dir/utils/fs.cpp.obj
server.exe: CMakeFiles/server.dir/models/request.cpp.obj
server.exe: CMakeFiles/server.dir/models/response.cpp.obj
server.exe: CMakeFiles/server.dir/utils/serialize.cpp.obj
server.exe: CMakeFiles/server.dir/build.make
server.exe: CMakeFiles/server.dir/linkLibs.rsp
server.exe: CMakeFiles/server.dir/objects1.rsp
server.exe: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable server.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\server.dir\link.txt --verbose=$(VERBOSE)
	C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy Bypass -file C:/Users/HPC/.vcpkg-clion/vcpkg/scripts/buildsystems/msbuild/applocal.ps1 -targetBinary C:/Zohar/University/Defensive/Multi/Maman14/server/cmake-build-debug/server.exe -installedDir C:/Users/HPC/.vcpkg-clion/vcpkg/installed/x64-mingw-dynamic/debug/bin -OutVariable out

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: server.exe
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\server.dir\cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Zohar\University\Defensive\Multi\Maman14\server C:\Zohar\University\Defensive\Multi\Maman14\server C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug C:\Zohar\University\Defensive\Multi\Maman14\server\cmake-build-debug\CMakeFiles\server.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/server.dir/depend
