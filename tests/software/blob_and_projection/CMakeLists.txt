cmake_minimum_required(VERSION 2.8)

project( blob_and_projection )
find_package( OpenCV REQUIRED )

add_executable( blob_and_projection blob_and_projection.cpp )
target_link_libraries( blob_and_projection ${OpenCV_LIBS} ) 

add_executable( blob_analysis_pipelined blob_analysis_pipelined.cpp )
target_link_libraries( blob_analysis_pipelined ${OpenCV_LIBS} ) 

add_executable( generate_image generate_image.cpp )
target_link_libraries( generate_image ${OpenCV_LIBS} ) 
