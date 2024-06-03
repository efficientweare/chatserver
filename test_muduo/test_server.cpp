/*
    muduo 网络库给用户提供两个主要的类
    TcpSever：用于编写服务器程序的
    TcpClient: 用于编写客户端程序的


epoll + 线程池
好处：能够把网络I/O的代码和业务代码区分开
                                用户的连接和断开   用户的可读写事件


*/
#include <muduo/net/TcpServer.h>
#include <muduo/net/EventLoop.h>
#include <functional>
#include <iostream>
#include <string>
using namespace std;
using namespace muduo;
using namespace muduo::net;
using namespace placeholders;
/*基于muduo网络库开发服务器模型程序
1. 组合TcpServer对象
2. 创建EventLoop事件循环对象指针
3. 明确TcpServer构造函数需要什么参数，输出ChatServer的构造函数
4. 在当前服务器类的构造函数当中，注册处理连接的回调函数和处理读写事件的回调函数
5. 设置合适的服务端线程数量，muduo库会自己划分工作线程和I/O线程
*/

class ChatServer
{
public:
    ChatServer(EventLoop *loop,               // 事件循环（reactor）
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

    void start()
    {
        _server.start();
    }

private:
    // 专门处理用户的连接创建和断开
    void onConnection(const TcpConnectionPtr &conn)
    {
        if (conn->connected())
        { // 已连接
            cout << conn->peerAddress().toIpPort() << " ->" << conn->localAddress().toIpPort() << endl;
        }
        else
        { // 未连接
            cout << conn->peerAddress().toIpPort() << " ->" << conn->localAddress().toIpPort() << endl;
            conn->shutdown();
            // _loop
        }
    }

    // 专门处理用户的读写事件
    void onMessage(const TcpConnectionPtr &conn, // 连接
                   Buffer *buffer,               // 缓存区
                   Timestamp time)               // 保存了收到缓冲区数据的时间信息
    {
        string buf = buffer->retrieveAllAsString();
        cout << "recv data " << buf << "time" << time.toString() << endl;
        conn->send(buf);
    }

    TcpServer _server; // #1
    EventLoop *_loop;  // #2 epoll
};

int main()
{
    EventLoop loop;
    InetAddress addr("127.0.0.1",6000);
    ChatServer server(&loop,addr,"chatserver");
    server.start(); // listenfd epoll_ctl =>epoll （向epoll add/mod event）
    loop.loop(); // epoll—wait以阻塞方式等待行用户创建连接，已连接用户的读写事件等。
}