
## 1. 项目功能
（１）客户端能够远程注册，登录，个人资料加密，添加好友，私聊，创建群组，群组聊天等功能）

## 2. 项目简介
（1） 整体流程


（2） 技术栈
* tiny_muduo 网络库-> epoll +pthread
* redis -> 发布订阅-> 服务器中间件 跨服务器通信 
* nginx -> 基本使用 -> 负载均衡
* mysql -> 保存用户信息，群组信息和离线消息
* mysql 连接池 -> 优化mysql连接

## 3. 项目未来发展：
### 业务扩展
* 添加好友上线提醒（将上线的id所有好友得到，然后转发上线消息）－－－易

* 添加好友删除功能（在friendmodel中添加好友删除，sql为delete）－－－易

* 添加查看好友功能（增加一类消息，查看好友功能）－－－易

* 添加密码加密模块 (设置一个map，id和加密算法的对应) --中

* 添加退出群聊功能（

* 添加免打扰功能（client 客户端实现，客户端缓存，显示未读消息条数）

* 支持文件传输功能（

* 添加图片转发的功能（未来qt实现

### 技术扩展：
* 使用mysql连接池提高查询效率
* 学习muduo库，编写tinymuduo库应用于该项目：加深对网络和epoll的理解。
* 学习json序列化和反序列化，实现小的json.hpp文件应用于该项目：加深对序列化的理解。


## 4. 项目安装方法：


## 5. 现在存在的bug：
* 群聊创建者群聊会多发一条数据  --- 由于一个chatclient分时连接了两个user导致。

* 离线消息收不到