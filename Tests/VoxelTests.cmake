project(KubeVoxelTests)

get_filename_component(KubeVoxelTestsDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeVoxelTestsSources
    ${KubeVoxelTestsDir}/tests_Voxel.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${KubeVoxelTestsSources})

add_test(NAME ${CMAKE_PROJECT_NAME} COMMAND ${CMAKE_PROJECT_NAME})

target_link_libraries(${CMAKE_PROJECT_NAME}
PUBLIC
    KubeVoxel
    GTest::GTest GTest::Main
)