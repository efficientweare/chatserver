#include "FriendService.hpp"

#define BUFF_SIZE 256

FriendService::FriendService() : log_stub_(new RpcChannel), master_("/FriendService")
{
    master_.start();
}

//获取好友列表
void FriendService::GetFriendList(::google::protobuf::RpcController *controller,
                                  const ::ik_FriendService::FriendListRequest *request,
                                  ::ik_FriendService::FriendListResponse *response,
                                  ::google::protobuf::Closure *done)
{
    // GetFriendList 流程如下：
    // 1. 反序列化 request并获取最新的可用服务器列表
    // 2. 调用 master 获得可用连接
    // 3. tcp连接发送调用请求。
    // 4. 获取返回信息

    //刷新zookeeper列表
    master_.get_follow();
    //反序列化
    ik_FriendServer::Request ser_request;
    ser_request.set_type("GetFriendList");
    ser_request.set_request(request->SerializeAsString());

    //获得一个可用的连接
    int client_fd;
    while ((client_fd = master_.get_service()) == -1)
    {
        master_.get_follow();
        sleep(1);
    }

    //发送任务信息
    string send_str = ser_request.SerializeAsString();
    if (send(client_fd, send_str.c_str(), send_str.size(), 0) == -1)
    {
        //打印日志
        ik::LogRequest log_request;
        log_request.set_name("FriendService");
        log_request.set_msg("send error");
        google::protobuf::Empty em_response;
        log_stub_.Log_ERROR(nullptr, &log_request, &em_response, nullptr);

        response->set_is_success(false);
        done->Run();
        return;
    }

    // 获取返回信息
    char recv_buf[BUFF_SIZE] = {0};
    if (recv(client_fd, recv_buf, BUFF_SIZE, 0) == -1)
    {
        //打印日志
        ik::LogRequest log_request;
        log_request.set_name("FriendService");
        log_request.set_msg("recv error");
        google::protobuf::Empty em_response;
        log_stub_.Log_ERROR(nullptr, &log_request, &em_response, nullptr);

        response->set_is_success(false);
        done->Run();
        return;
    }

    response->ParseFromString(recv_buf);
    close(client_fd);
    done->Run();
}

//获得用户信息
void FriendService::GetUserInfo(::google::protobuf::RpcController *controller,
                                const ::ik_FriendService::UserInfoRequest *request,
                                ::ik_FriendService::UserInfoReponse *response,
                                ::google::protobuf::Closure *done)
{
    // GetUserInfo 流程如下：
    // 1. 获取任务信息（反序列化）
    // 2. 向 zookeeper 获取一个可用的连接
    // 3. 发送任务信息
    // 4. 接收返回信息
    // 5. 关闭连接
    // 6. 反序列化返回信息
    // 7. 打印返回信息
    // 8. 回调 done()

    // GetUserInfo 流程结束

    // 反序列化
    ik_FriendServer::Request ser_request;
    ser_request.set_type("GetUserInfo");
    ser_request.set_request(request->SerializeAsString());

    // 获得一个可用的连接
    int client_fd;
    while ((client_fd = master_.get_service()) == -1)
    {
        master_.get_follow();
        sleep(1);
    }

    // 发送任务信息
    string send_str = ser_request.SerializeAsString();
    if (send(
    //刷新zookeeper列表
    master_.get_follow();
    //反序列化
    ik_FriendServer::Request ser_request;
    ser_request.set_type("GetUserInfo");
    ser_request.set_request(request->SerializeAsString());

    //获得一个可用的连接
    int client_fd;
    while ((client_fd = master_.get_service()) == -1)
    {
        master_.get_follow();
        sleep(1);
    }

    //发送任务信息
    string send_str = ser_request.SerializeAsString();
    if (send(client_fd, send_str.c_str(), send_str.size(), 0) == -1)
    {
        //打印日志
        ik::LogRequest log_request;
        log_request.set_name("FriendService");
        log_request.set_msg("send error");
        google::protobuf::Empty em_response;
        log_stub_.Log_ERROR(nullptr, &log_request, &em_response, nullptr);

        controller->SetFailed("send error");
        done->Run();
        return;
    }

    // 获取返回信息
    char recv_buf[BUFF_SIZE] = {0};
    if (recv(client_fd, recv_buf, BUFF_SIZE, 0) == -1)
    {
        //打印日志
        ik::LogRequest log_request;
        log_request.set_name("FriendService");
        log_request.set_msg("recv error");
        google::protobuf::Empty em_response;
        log_stub_.Log_ERROR(nullptr, &log_request, &em_response, nullptr);

        controller->SetFailed("recv error");
        done->Run();
        return;
    }

    response->ParseFromString(recv_buf);
    close(client_fd);
    done->Run();
}

//添加好友
void FriendService::AddFriend(::google::protobuf::RpcController *controller,
                              const ::ik_FriendService::AddFriendRequest *request,
                              ::google::protobuf::Empty *response,
                              ::google::protobuf::Closure *done)
{
    // AddFriend 流程如下：
    // 1. 获得最新的zookeeper下的节点列表
    // 2. 找到一个可用的连接
    // 3. 反序列化并发送任务信息给 server 服务器
    // 4. 关闭连接，并返回结果
    //刷新zookeeper列表
    master_.get_follow();
    //反序列化
    ik_FriendServer::Request ser_request;
    ser_request.set_type("AddFriend");
    ser_request.set_request(request->SerializeAsString());

    //获得一个可用的连接
    int client_fd;
    while ((client_fd = master_.get_service()) == -1)
    {
        master_.get_follow();
        sleep(1);
    }

    //发送任务信息
    string send_str = ser_request.SerializeAsString();
    if (send(client_fd, send_str.c_str(), send_str.size(), 0) == -1)
    {
        //打印日志
        ik::LogRequest log_request;
        log_request.set_name("FriendService");
        log_request.set_msg("send error");
        google::protobuf::Empty em_response;
        log_stub_.Log_ERROR(nullptr, &log_request, &em_response, nullptr);

        controller->SetFailed("send error");
        done->Run();
        return;
    }

    close(client_fd);
    done->Run();
}

//删除好友
void FriendService::DeleteFriend(::google::protobuf::RpcController *controller,
                                 const ::ik_FriendService::DeleteFriendRequest *request,
                                 ::google::protobuf::Empty *response,
                                 ::google::protobuf::Closure *done)
{
    // DeleteFriend 流程如下：
    // 1. 获得最新的zookeeper下的节点列表
    // 2. 找到一个可用的连接
    // 3. 反序列化并发送任务信息给 server 服务器
    // 4. 关闭连接，并返回结果
    //刷新zookeeper列表
    master_.get_follow();
    //反序列化
    ik_FriendServer::Request ser_request;
    ser_request.set_type("DeleteFriend");
    ser_request.set_request(request->SerializeAsString());

    //获得一个可用的连接
    int client_fd;
    while ((client_fd = master_.get_service()) == -1)
    {
        master_.get_follow();
        sleep(1);
    }

    //发送任务信息
    string send_str = ser_request.SerializeAsString();
    if (send(client_fd, send_str.c_str(), send_str.size(), 0) == -1)
    {
        //打印日志
        ik::LogRequest log_request;
        log_request.set_name("FriendService");
        log_request.set_msg("send error");
        google::protobuf::Empty em_response;
        log_stub_.Log_ERROR(nullptr, &log_request, &em_response, nullptr);

        controller->SetFailed("send error");
        done->Run();
        return;
    }

    close(client_fd);
    done->Run();
}