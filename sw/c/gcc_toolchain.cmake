set(LINKER_SCRIPT "${CMAKE_CURRENT_LIST_DIR}/../common/link.ld")
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_C_COMPILER riscv32-unknown-elf-gcc)
set(CMAKE_OBJCOPY riscv32-unknown-elf-objcopy)
set(CMAKE_C_FLAGS_INIT
    "-march=rv32imc -mabi=ilp32 -mcmodel=medany -Wall -fvisibility=hidden -ffreestanding")
set(CMAKE_ASM_FLAGS_INIT "-march=rv32imc")
set(CMAKE_EXE_LINKER_FLAGS_INIT "-nostartfiles -T \"${LINKER_SCRIPT}\"")
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR riscv)

set(CMAKE_C_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-gcc)
set(CMAKE_CXX_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-g++)
set(CMAKE_ASM_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-as)

# Adjust these flags based on your specific target architecture
set(CMAKE_C_FLAGS "-march=rv32imac -mabi=ilp32") # for 32-bit
# or
# set(CMAKE_C_FLAGS "-march=rv64imac -mabi=lp64") # for 64-bit

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
