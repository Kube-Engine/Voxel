project(KubeVoxel)

get_filename_component(KubeVoxelDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeVoxelSources
    ${KubeVoxelDir}/Dummy.cpp
)

add_library(${PROJECT_NAME} ${KubeVoxelSources})

target_link_libraries(${PROJECT_NAME}
PUBLIC
    KubeGraphics
)

if(${KF_TESTS})
    include(${KubeVoxelDir}/Tests/VoxelTests.cmake)
endif()

if(${KF_BENCHMARKS})
    include(${KubeVoxelDir}/Benchmarks/VoxelBenchmarks.cmake)
endif()