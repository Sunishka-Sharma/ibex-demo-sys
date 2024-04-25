set(LINKER_SCRIPT "${CMAKE_CURRENT_LIST_DIR}/../common/link.ld")
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv)

# Compiler and Toolchain Paths
set(CMAKE_C_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-gcc)
set(CMAKE_CXX_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-g++)
set(CMAKE_ASM_COMPILER /opt/homebrew/opt/riscv-gnu-toolchain/bin/riscv64-unknown-elf-as)
set(CMAKE_C_FLAGS_INIT "-march=rv32imac_zicsr_zifencei -mabi=ilp32")
set(CMAKE_ASM_FLAGS_INIT "-march=rv32imac_zicsr_zifencei -mabi=ilp32")

set(CMAKE_C_FLAGS "-march=rv32imac_zicsr_zifencei -mabi=ilp32")
set(CMAKE_ASM_FLAGS "-march=rv32imac_zicsr_zifencei -mabi=ilp32")



# Ensure linker flags are correctly set
set(CMAKE_EXE_LINKER_FLAGS "-nostartfiles -nostdlib -T ${LINKER_SCRIPT} -Wl,-O,elf32-littleriscv")


# Find Root Path Modes
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
