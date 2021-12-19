set(BUILD_TESTING OFF)
set(ASAN OFF)
set(UBSAN OFF)
set(NONET ON)
set(USE_SDL1 ON)
set(SDL1_VIDEO_MODE_BPP 8)
# Enable exception suport as they are used in dvlnet code
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fexceptions")

set(DEVILUTIONX_SYSTEM_BZIP2 OFF)
find_package(ZLIB REQUIRED)

# Do not warn about unknown attributes, such as [[nodiscard]].
# As this build uses an older compiler, there are lots of them.
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-attributes")

# `fseeko` fails to link on Amiga.
add_definitions(-Dfseeko=fseek)

file(COPY "${CMAKE_CURRENT_SOURCE_DIR}/Packaging/amiga/devilutionx.info" DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")