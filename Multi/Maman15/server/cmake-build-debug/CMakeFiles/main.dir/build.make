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
CMAKE_SOURCE_DIR = C:\Zohar\University\Defensive\Multi\Maman15\server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/main.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/main.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman15/server/main.cpp
CMakeFiles/main.dir/main.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/main.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/main.cpp.obj -MF CMakeFiles\main.dir\main.cpp.obj.d -o CMakeFiles\main.dir\main.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman15\server\main.cpp

CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman15\server\main.cpp > CMakeFiles\main.dir\main.cpp.i

CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman15\server\main.cpp -o CMakeFiles\main.dir\main.cpp.s

CMakeFiles/main.dir/server.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/server.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/server.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman15/server/server.cpp
CMakeFiles/main.dir/server.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/server.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/server.cpp.obj -MF CMakeFiles\main.dir\server.cpp.obj.d -o CMakeFiles\main.dir\server.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman15\server\server.cpp

CMakeFiles/main.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/server.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman15\server\server.cpp > CMakeFiles\main.dir\server.cpp.i

CMakeFiles/main.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/server.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman15\server\server.cpp -o CMakeFiles\main.dir\server.cpp.s

CMakeFiles/main.dir/utils/fs.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/utils/fs.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/utils/fs.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman15/server/utils/fs.cpp
CMakeFiles/main.dir/utils/fs.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/utils/fs.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/utils/fs.cpp.obj -MF CMakeFiles\main.dir\utils\fs.cpp.obj.d -o CMakeFiles\main.dir\utils\fs.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman15\server\utils\fs.cpp

CMakeFiles/main.dir/utils/fs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/utils/fs.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman15\server\utils\fs.cpp > CMakeFiles\main.dir\utils\fs.cpp.i

CMakeFiles/main.dir/utils/fs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/utils/fs.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman15\server\utils\fs.cpp -o CMakeFiles\main.dir\utils\fs.cpp.s

CMakeFiles/main.dir/models/request.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/models/request.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/models/request.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman15/server/models/request.cpp
CMakeFiles/main.dir/models/request.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/models/request.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/models/request.cpp.obj -MF CMakeFiles\main.dir\models\request.cpp.obj.d -o CMakeFiles\main.dir\models\request.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman15\server\models\request.cpp

CMakeFiles/main.dir/models/request.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/models/request.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman15\server\models\request.cpp > CMakeFiles\main.dir\models\request.cpp.i

CMakeFiles/main.dir/models/request.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/models/request.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman15\server\models\request.cpp -o CMakeFiles\main.dir\models\request.cpp.s

CMakeFiles/main.dir/models/response.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/models/response.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/models/response.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman15/server/models/response.cpp
CMakeFiles/main.dir/models/response.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.dir/models/response.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/models/response.cpp.obj -MF CMakeFiles\main.dir\models\response.cpp.obj.d -o CMakeFiles\main.dir\models\response.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman15\server\models\response.cpp

CMakeFiles/main.dir/models/response.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/models/response.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman15\server\models\response.cpp > CMakeFiles\main.dir\models\response.cpp.i

CMakeFiles/main.dir/models/response.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/models/response.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman15\server\models\response.cpp -o CMakeFiles\main.dir\models\response.cpp.s

CMakeFiles/main.dir/utils/random.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/utils/random.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/utils/random.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman15/server/utils/random.cpp
CMakeFiles/main.dir/utils/random.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main.dir/utils/random.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/utils/random.cpp.obj -MF CMakeFiles\main.dir\utils\random.cpp.obj.d -o CMakeFiles\main.dir\utils\random.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman15\server\utils\random.cpp

CMakeFiles/main.dir/utils/random.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/utils/random.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman15\server\utils\random.cpp > CMakeFiles\main.dir\utils\random.cpp.i

CMakeFiles/main.dir/utils/random.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/utils/random.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman15\server\utils\random.cpp -o CMakeFiles\main.dir\utils\random.cpp.s

CMakeFiles/main.dir/utils/strings.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/utils/strings.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/utils/strings.cpp.obj: C:/Zohar/University/Defensive/Multi/Maman15/server/utils/strings.cpp
CMakeFiles/main.dir/utils/strings.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/main.dir/utils/strings.cpp.obj"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/utils/strings.cpp.obj -MF CMakeFiles\main.dir\utils\strings.cpp.obj.d -o CMakeFiles\main.dir\utils\strings.cpp.obj -c C:\Zohar\University\Defensive\Multi\Maman15\server\utils\strings.cpp

CMakeFiles/main.dir/utils/strings.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main.dir/utils/strings.cpp.i"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Zohar\University\Defensive\Multi\Maman15\server\utils\strings.cpp > CMakeFiles\main.dir\utils\strings.cpp.i

CMakeFiles/main.dir/utils/strings.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main.dir/utils/strings.cpp.s"
	C:\Users\HPC\AppData\Local\Programs\CLion\bin\mingw\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Zohar\University\Defensive\Multi\Maman15\server\utils\strings.cpp -o CMakeFiles\main.dir\utils\strings.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.obj" \
"CMakeFiles/main.dir/server.cpp.obj" \
"CMakeFiles/main.dir/utils/fs.cpp.obj" \
"CMakeFiles/main.dir/models/request.cpp.obj" \
"CMakeFiles/main.dir/models/response.cpp.obj" \
"CMakeFiles/main.dir/utils/random.cpp.obj" \
"CMakeFiles/main.dir/utils/strings.cpp.obj"

# External object files for target main
main_EXTERNAL_OBJECTS =

main.exe: CMakeFiles/main.dir/main.cpp.obj
main.exe: CMakeFiles/main.dir/server.cpp.obj
main.exe: CMakeFiles/main.dir/utils/fs.cpp.obj
main.exe: CMakeFiles/main.dir/models/request.cpp.obj
main.exe: CMakeFiles/main.dir/models/response.cpp.obj
main.exe: CMakeFiles/main.dir/utils/random.cpp.obj
main.exe: CMakeFiles/main.dir/utils/strings.cpp.obj
main.exe: CMakeFiles/main.dir/build.make
main.exe: CMakeFiles/main.dir/linkLibs.rsp
main.exe: CMakeFiles/main.dir/objects1.rsp
main.exe: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable main.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\main.dir\link.txt --verbose=$(VERBOSE)
	C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy Bypass -file C:/Users/HPC/.vcpkg-clion/vcpkg/scripts/buildsystems/msbuild/applocal.ps1 -targetBinary C:/Zohar/University/Defensive/Multi/Maman15/server/cmake-build-debug/main.exe -installedDir C:/Users/HPC/.vcpkg-clion/vcpkg/installed/x64-mingw-dynamic/debug/bin -OutVariable out

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main.exe
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\main.dir\cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Zohar\University\Defensive\Multi\Maman15\server C:\Zohar\University\Defensive\Multi\Maman15\server C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug C:\Zohar\University\Defensive\Multi\Maman15\server\cmake-build-debug\CMakeFiles\main.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/main.dir/depend
