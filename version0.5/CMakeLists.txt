cmake_minimum_required(VERSION 3.8 FATAL_ERROR)
add_executable(version0.5 main.cpp paddle.cpp ball.cpp background.cpp )
set(SFML_STATIC_LIBRARIES TRUE)

find_package(Freetype REQUIRED)
find_package(JPEG REQUIRED)
find_package(SFML 2 COMPONENTS window graphics system REQUIRED)

target_include_directories(version0.5 PRIVATE ${SFML_INCLUDE_DIR})
target_compile_features(version0.5 PUBLIC cxx_std_17)
target_compile_definitions(version0.5 PRIVATE SFML_STATIC)

target_link_libraries(version0.5 ${SFML_LIBRARIES} ${SFML_DEPENDENCIES})