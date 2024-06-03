


# 把.指定路径下的所有源文件名放入SRC_LIST
aux_source_directory(. SRC_LIST)
aux_source_directory(./redis REDIS_LIST)

aux_source_directory(./model MODEL_LIST)
aux_source_directory(./mysqldb DB_LIST)

# 指定生成可执行文件
add_executable(ChatServer ${SRC_LIST} ${DB_LIST} ${MODEL_LIST} ${REDIS_LIST})

# 表示 ChatServer 这个目标程序，需要链接的库文件
target_link_libraries(ChatServer muduo_net muduo_base mysqlclient hiredis pthread)