
# 配置头文件的搜索路径
# include_directories()

# 配置库文件搜索路径
# link_directories()


# 设置可执行文件最终存储的路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)



# 设置需要编译的源文件列表
set(SRC_LIST ${PROJECT_SOURCE_DIR}/test_muduo/test_server.cpp)

# 把.指定路径下的所有源文件名放入SRC_LIST
# aux_source_direvtory(. SRC_LIST)

# 表示生成可执行文件server，有哪些源文件
add_executable(server  ${SRC_LIST})

# 表示server这个目标程序，需要链接的库文件
target_link_libraries(server muduo_net muduo_base pthread)
