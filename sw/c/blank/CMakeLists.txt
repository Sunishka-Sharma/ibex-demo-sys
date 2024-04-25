add_executable(blank blank.S)

# Use GCC to handle linking rather than passing linker flags that ld does not understand
set_target_properties(blank PROPERTIES
    LINKER_LANGUAGE C
    C_STANDARD 11
)

target_link_options(blank PRIVATE
    -T/Users/sunishkasharma/Desktop/ibex-demo-system-main/sw/common/link.ld
)

add_custom_command(
    TARGET blank POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O binary "$<TARGET_FILE:blank>" "$<TARGET_FILE:blank>.bin"
    COMMAND srec_cat "$<TARGET_FILE:blank>.bin" -binary -offset 0x0000 -byte-swap 4 -o "$<TARGET_FILE:blank>.vmem" -vmem
    VERBATIM
)
