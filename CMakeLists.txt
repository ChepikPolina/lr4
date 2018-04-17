cmake_minimum_required(VERSION 3.0)
<<<<<<< HEAD

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCE_EXE ${CMAKE_CURRENT_SOURCE_DIR}/source/main.cpp)
set(SOURCE_LIB ${CMAKE_CURRENT_SOURCE_DIR}/source/demo.cpp)

option(BUILD_TESTS "Build tests" ON)
option(BUILD_EXAMPLES "Build examples" ON)

project(demo)
project(print)

add_library(demo STATIC ${SOURCE_LIB})
add_library(print STATIC ${CMAKE_CURRENT_SOURCE_DIR}/source/print.cpp)

add_executable(demo_main ${SOURCE_EXE})

include_directories(\${CMAKE_CURRENT_SOURCE_DIR}/include)

target_include_directories(demo PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>
)

target_include_directories(print PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>
)

target_link_libraries(demo_main demo)

include_directories(\${CMAKE_CURRENT_SOURCE_DIR}/include)
if(BUILD_EXAMPLES)
  file(GLOB EXAMPLE_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/examples/*.cpp")
  foreach(EXAMPLE_SOURCE ${EXAMPLE_SOURCES})
    get_filename_component(EXAMPLE_NAME ${EXAMPLE_SOURCE} NAME_WE)
    add_executable(${EXAMPLE_NAME} ${EXAMPLE_SOURCE})
    target_link_libraries(${EXAMPLE_NAME} print)
    install(TARGETS ${EXAMPLE_NAME}
      RUNTIME DESTINATION bin
    )
  endforeach(EXAMPLE_SOURCE ${EXAMPLE_SOURCES})
endif()

if(BUILD_TESTS)
  enable_testing()
  file(GLOB ${PROJECT_NAME}_TEST_SOURCES test/*.cpp) 
  add_executable(check ${${PROJECT_NAME}_TEST_SOURCES})
  target_link_libraries(check ${PROJECT_NAME} ${DEPENDS_LIBRARIES})
  add_test(NAME check COMMAND check "-s" "-r" "compact" "--use-colour" "yes")
endif()

install(TARGETS demo
    EXPORT demo-config
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)

install(TARGETS print
    EXPORT print-config
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
)

install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/ DESTINATION include)
install(EXPORT demo-config DESTINATION cmake)
install(EXPORT print-config DESTINATION cmake)

include(CPackConfig.cmake)
=======
set(CMAKE_CXX_STANDARD 11)
option(BUILD_EXAMPLES "Build examples" ON)
option(BUILD_TESTS "Build tests" ON)
project(main)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
add_executable(demo sources/main.cpp)
>>>>>>> 45730a3c6bd4887138f56be01f0cabaacee70bfd
