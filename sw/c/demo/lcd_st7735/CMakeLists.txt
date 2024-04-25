add_library(lcd_st7735_lib
    ${CMAKE_CURRENT_SOURCE_DIR}/../../../../vendor/display_drivers/core/lcd_base.c
    ${CMAKE_CURRENT_SOURCE_DIR}/../../../../vendor/display_drivers/core/lucida_console_10pt.c
    ${CMAKE_CURRENT_SOURCE_DIR}/../../../../vendor/display_drivers/core/lucida_console_12pt.c
    ${CMAKE_CURRENT_SOURCE_DIR}/../../../../vendor/display_drivers/st7735/lcd_st7735.c
)

add_executable(lcd_st7735 
    main.c 
    lcd.c 
    fractal_fixed.c 
    fractal_float.c 
    fractal_palette.c
)

# Combine linking for simplicity and ensure proper library order
target_link_libraries(lcd_st7735 
    PRIVATE 
    lcd_st7735_lib  # First link the specific library
    common          # Then link common where your peripheral functions might be defined
    m               # Standard math library
    c               # Standard C library
    gcc             # GCC low-level support library, if needed for additional support
)

# Include directories for the lcd_st7735 target
target_include_directories(lcd_st7735 PRIVATE 
    /Users/sunishkasharma/Desktop/ibex-demo-system-main/vendor/display_drivers/core
    /Users/sunishkasharma/Desktop/ibex-demo-system-main/sw/c/common
    /Users/sunishkasharma/Desktop/ibex-demo-system-main/vendor/display_drivers
)
