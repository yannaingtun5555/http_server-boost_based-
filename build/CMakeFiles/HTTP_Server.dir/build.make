# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_SOURCE_DIR = "/home/ynt/Desktop/Project(HTTP_Server) 2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/ynt/Desktop/Project(HTTP_Server) 2/build"

# Include any dependencies generated for this target.
include CMakeFiles/HTTP_Server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/HTTP_Server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/HTTP_Server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HTTP_Server.dir/flags.make

CMakeFiles/HTTP_Server.dir/main.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/main.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/main.cpp
CMakeFiles/HTTP_Server.dir/main.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HTTP_Server.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/main.cpp.o -MF CMakeFiles/HTTP_Server.dir/main.cpp.o.d -o CMakeFiles/HTTP_Server.dir/main.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/main.cpp"

CMakeFiles/HTTP_Server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/main.cpp" > CMakeFiles/HTTP_Server.dir/main.cpp.i

CMakeFiles/HTTP_Server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/main.cpp" -o CMakeFiles/HTTP_Server.dir/main.cpp.s

CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Configuration/config_parser.cpp
CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o -MF CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Configuration/config_parser.cpp"

CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Configuration/config_parser.cpp" > CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.i

CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Configuration/config_parser.cpp" -o CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.s

CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Error_handling/error_handling.cpp
CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o -MF CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Error_handling/error_handling.cpp"

CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Error_handling/error_handling.cpp" > CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.i

CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Error_handling/error_handling.cpp" -o CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.s

CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Core/connection.cpp
CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o -MF CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/connection.cpp"

CMakeFiles/HTTP_Server.dir/Core/connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Core/connection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/connection.cpp" > CMakeFiles/HTTP_Server.dir/Core/connection.cpp.i

CMakeFiles/HTTP_Server.dir/Core/connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Core/connection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/connection.cpp" -o CMakeFiles/HTTP_Server.dir/Core/connection.cpp.s

CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Core/request_handler.cpp
CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o -MF CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/request_handler.cpp"

CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/request_handler.cpp" > CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.i

CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/request_handler.cpp" -o CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.s

CMakeFiles/HTTP_Server.dir/Core/session.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Core/session.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Core/session.cpp
CMakeFiles/HTTP_Server.dir/Core/session.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/HTTP_Server.dir/Core/session.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Core/session.cpp.o -MF CMakeFiles/HTTP_Server.dir/Core/session.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Core/session.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/session.cpp"

CMakeFiles/HTTP_Server.dir/Core/session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Core/session.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/session.cpp" > CMakeFiles/HTTP_Server.dir/Core/session.cpp.i

CMakeFiles/HTTP_Server.dir/Core/session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Core/session.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/session.cpp" -o CMakeFiles/HTTP_Server.dir/Core/session.cpp.s

CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Routing/routing.cpp
CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o -MF CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Routing/routing.cpp"

CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Routing/routing.cpp" > CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.i

CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Routing/routing.cpp" -o CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.s

CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/File_Management/file_handler.cpp
CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o -MF CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o.d -o CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/File_Management/file_handler.cpp"

CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/File_Management/file_handler.cpp" > CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.i

CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/File_Management/file_handler.cpp" -o CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.s

CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Core/response_generator.cpp
CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o -MF CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/response_generator.cpp"

CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/response_generator.cpp" > CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.i

CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/response_generator.cpp" -o CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.s

CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Thread/thread.cpp
CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o -MF CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Thread/thread.cpp"

CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Thread/thread.cpp" > CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.i

CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Thread/thread.cpp" -o CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.s

CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Monitoring/monitoring.cpp
CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o -MF CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Monitoring/monitoring.cpp"

CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Monitoring/monitoring.cpp" > CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.i

CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Monitoring/monitoring.cpp" -o CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.s

CMakeFiles/HTTP_Server.dir/Core/global.cpp.o: CMakeFiles/HTTP_Server.dir/flags.make
CMakeFiles/HTTP_Server.dir/Core/global.cpp.o: /home/ynt/Desktop/Project(HTTP_Server)\ 2/Core/global.cpp
CMakeFiles/HTTP_Server.dir/Core/global.cpp.o: CMakeFiles/HTTP_Server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/HTTP_Server.dir/Core/global.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HTTP_Server.dir/Core/global.cpp.o -MF CMakeFiles/HTTP_Server.dir/Core/global.cpp.o.d -o CMakeFiles/HTTP_Server.dir/Core/global.cpp.o -c "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/global.cpp"

CMakeFiles/HTTP_Server.dir/Core/global.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/HTTP_Server.dir/Core/global.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/global.cpp" > CMakeFiles/HTTP_Server.dir/Core/global.cpp.i

CMakeFiles/HTTP_Server.dir/Core/global.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/HTTP_Server.dir/Core/global.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ynt/Desktop/Project(HTTP_Server) 2/Core/global.cpp" -o CMakeFiles/HTTP_Server.dir/Core/global.cpp.s

# Object files for target HTTP_Server
HTTP_Server_OBJECTS = \
"CMakeFiles/HTTP_Server.dir/main.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Core/session.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o" \
"CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o" \
"CMakeFiles/HTTP_Server.dir/Core/global.cpp.o"

# External object files for target HTTP_Server
HTTP_Server_EXTERNAL_OBJECTS =

HTTP_Server: CMakeFiles/HTTP_Server.dir/main.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Configuration/config_parser.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Error_handling/error_handling.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Core/connection.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Core/request_handler.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Core/session.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Routing/routing.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/File_Management/file_handler.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Core/response_generator.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Thread/thread.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Monitoring/monitoring.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/Core/global.cpp.o
HTTP_Server: CMakeFiles/HTTP_Server.dir/build.make
HTTP_Server: /usr/local/boost_1_86_0/lib/libboost_log_setup.a
HTTP_Server: /usr/local/lib/libjsoncpp.a
HTTP_Server: /usr/local/boost_1_86_0/lib/libboost_log.a
HTTP_Server: /usr/local/boost_1_86_0/lib/libboost_chrono.a
HTTP_Server: /usr/local/boost_1_86_0/lib/libboost_filesystem.a
HTTP_Server: /usr/local/boost_1_86_0/lib/libboost_atomic.a
HTTP_Server: /usr/local/boost_1_86_0/lib/libboost_thread.a
HTTP_Server: CMakeFiles/HTTP_Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable HTTP_Server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HTTP_Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HTTP_Server.dir/build: HTTP_Server
.PHONY : CMakeFiles/HTTP_Server.dir/build

CMakeFiles/HTTP_Server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HTTP_Server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HTTP_Server.dir/clean

CMakeFiles/HTTP_Server.dir/depend:
	cd "/home/ynt/Desktop/Project(HTTP_Server) 2/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/ynt/Desktop/Project(HTTP_Server) 2" "/home/ynt/Desktop/Project(HTTP_Server) 2" "/home/ynt/Desktop/Project(HTTP_Server) 2/build" "/home/ynt/Desktop/Project(HTTP_Server) 2/build" "/home/ynt/Desktop/Project(HTTP_Server) 2/build/CMakeFiles/HTTP_Server.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/HTTP_Server.dir/depend

