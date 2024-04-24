# This is in the CMakeLists.txt inside the common folder
add_library(common OBJECT demo_system.c uart.c timer.c gpio.c pwm.c spi.c crt0.S)
target_include_directories(common PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}")

# Ensure the assembler processes the .S file with the C preprocessor
set_source_files_properties(crt0.S PROPERTIES LANGUAGE C)