#ifndef CHATSERVER_H
#define CHARSERVER_H

#include <muduo/net/TcpServer.h>
#include <muduo/net/EventLoop.h>
using namespace muduo;
using namespace muduo::net;

class ChatServer
{
public:
    // 初始化聊天服务器对象
    ChatServer(EventLoop *loop,
               const InetAddress &listenAddr,
               const string &nameArg);

    // 启动服务
    void start();


private:
    // 专门处理用户的连接创建和断开
    void onConnection(const TcpConnectionPtr &);

    // 专门处理用户的读写事件
    void onMessage(const TcpConnectionPtr &, // 连接
                   Buffer *,                 // 缓存区
                   Timestamp);               // 保存了收到缓冲区数据的时间信息
    TcpServer _server;                   // 组合的muduo库，实现服务器功能的类对象
    EventLoop *_loop;                        // 指向事件循环对象的指针
};

#endif