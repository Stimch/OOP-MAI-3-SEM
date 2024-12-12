cmake_minimum_required(VERSION 3.10)

project(Decimal)

set(CMAKE_CXX_STANDARD 11)

# Найти Google Test
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

# Добавить исполняемый файл для тестов
add_executable(Lab2 main.cpp unit.cpp Decimal.cpp)

# Линковать с Google Test
target_link_libraries(Lab2 ${GTEST_LIBRARIES} pthread)
