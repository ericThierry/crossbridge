INCLUDE(Platform/Generic-ADSP-Common)

SET(CMAKE_ASM_SOURCE_FILE_EXTENSIONS asm)
SET(CMAKE_ASM_OUTPUT_EXTENSION ".doj" )
SET(CMAKE_ASM_COMPILE_OBJECT
    "<CMAKE_ASM_COMPILER> <FLAGS> -proc ${ADSP_PROCESSOR} -si-revision ${ADSP_PROCESSOR_SILICIUM_REVISION} -o <OBJECT> <SOURCE>")
