project(KubeVoxelBenchmarks)

get_filename_component(KubeVoxelBenchmarksDir ${CMAKE_CURRENT_LIST_FILE} PATH)

set(KubeVoxelBenchmarksSources
    ${KubeVoxelBenchmarksDir}/Main.cpp
)

add_executable(${CMAKE_PROJECT_NAME} ${KubeVoxelBenchmarksSources})

target_link_libraries(${CMAKE_PROJECT_NAME}
PUBLIC
    KubeVoxel
    benchmark::benchmark
)