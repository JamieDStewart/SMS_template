set(ASM_DIALECT "-Z80")

set(CMAKE_ASM${ASM_DIALECT}_COMPILER_ENV_VAR "ASM-Z80")
set(CMAKE_ASM${ASM_DIALECT}_COMPILER_WORKS 1)
set(CMAKE_ASM${ASM_DIALECT}_SOURCE_FILE_EXTENSIONS s;asm)
set(CMAKE_ASM${ASM_DIALECT}_COMPILER_ARG1 "")

# This section exists to override the one in CMakeASMInformation.cmake
# (the default Information file). This removes the <FLAGS>
# thing so that your C compiler flags that have been set via
# set_target_properties don't get passed to z80 assembler and confuse it.
if(NOT CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT)
  set(CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT "<CMAKE_ASM${ASM_DIALECT}_COMPILER> <FLAGS> -o <OBJECT> <SOURCE>")
endif(NOT CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT)

include(CMakeASMInformation)
set(ASM_DIALECT)
