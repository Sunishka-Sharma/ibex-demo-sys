set(LINKER_SCRIPT "${CMAKE_CURRENT_LIST_DIR}/../common/link.ld")
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv)

# Compiler and Toolchain Paths
set(CMAKE_C_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-gcc)
set(CMAKE_CXX_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-g++)
set(CMAKE_ASM_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-as)

# Compiler Flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=rv32imac -mabi=ilp32 -fno-common -fno-pie -nostdlib")

# Assembly Flags
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -march=rv32imac -mabi=ilp32 -fno-common -fno-pie")

# Linker Flags
set(CMAKE_EXE_LINKER_FLAGS "-nostartfiles -nostdlib -T ${LINKER_SCRIPT}")

# Find Root Path Modes
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
