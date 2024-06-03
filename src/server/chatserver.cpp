#include "chatserver.hpp"
#include "json.hpp"
#include "chatservice.hpp"
#include <iostream>
#include <functional>
#include <string>
using namespace std;
using namespace placeholders;
using json = nlohmann::json;

ChatServer::ChatServer(EventLoop *loop,               // 事件循环（reactor）
                       const InetAddress &listenAddr, // IP + Port
                       const string &nameArg)         // 服务器名字
    : _server(loop, listenAddr, nameArg), _loop(loop)
{
    // 给服务器注册用户连接的创建的断开回调
    _server.setConnectionCallback(bind(&ChatServer::onConnection, this, _1));

    // 给服务器注册用户读写事件回调
    _server.setMessageCallback(bind(&ChatServer::onMessage, this, _1, _2, _3));

    //  设置服务端的线程数量 1个I/O 线程，3个工作线程
    _server.setThreadNum(4);
}

void ChatServer::start()
{
    _server.start();
}

// 专门处理用户的连接创建和断开
void ChatServer::onConnection(const TcpConnectionPtr &conn)
{
    if (conn->connected())
    { // 已连接
        cout << conn->peerAddress().toIpPort() << " ->" << conn->localAddress().toIpPort() << endl;
    }
    else
    { // 未连接
        //cout << conn->peerAddress().toIpPort() << " ->" << conn->localAddress().toIpPort() << endl;
        ChatService::instance()->clientCloseException(conn);
        conn->shutdown();
        // _loop
    }
}

// 专门处理用户的读写事件
void ChatServer::onMessage(const TcpConnectionPtr &conn, // 连接
               Buffer *buffer,               // 缓存区
               Timestamp time)               // 保存了收到缓冲区数据的时间信息
{
    string buf = buffer->retrieveAllAsString();
    cout << "recv data " << buf << "time" << time.toString() << endl;
    // 数据的反序列化
    json js =json::parse(buf);
    // 达到的目的：完全解耦网络模块的代码和业务模块的代码
    // 通过js["msgid"] 获取=>业务handler 》=conn js time
    auto msgHandler = ChatService::instance()->getHandler(js["msgid"].get<int>());
    // 回调消息绑定好的事件处理器，来执行相应的业务处理
    msgHandler(conn,js,time);
    //conn->send(buf);
}

