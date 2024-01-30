# gpt4-copilot-java

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yangclivia/gpt4-copilot-java/latest)![Docker Pulls](https://img.shields.io/docker/pulls/yangclivia/gpt4-copilot-java)[![GitHub Repo stars](https://img.shields.io/github/stars/Yanyutin753/gpt4-copilot-java-sh?style=social)](https://github.com/Yanyutin753/gpt4-copilot-java-sh/stargazers)

### 不准白嫖，请给我免费的star⭐吧，十分感谢！

## 简介 
#### [gpt4-copilot-java](https://github.com/Yanyutin753/gpt4-copilot-java-sh) 中转copilot，cocopilot，回复流畅，支持高并发，支持一键脚本部署，小白也能快速使用！
#### [gpt4 copilot Java](https://github.com/Yanyutin753/gpt4-copilot-java-sh) Transfer Copilot, Copilot, smooth response, supports high concurrency, supports one click script deployment, and even novices can use it quickly!

-----

> ## 功能特性
> 
> * **多线程**：使用springboot的多线程，满足高并发需求
> 
> * **回复打字机处理**：解决copilot回复断断续续的毛病
> 
> * **自定义后缀**：防止url被滥用
> 
> * **个人部署**：保障隐私安全
> 
> * **一键脚本**: 超级简单，小白轻松上手
> 
> * **使用手册**：方便接口接入其他第三方应用
  
## [✨点击查看文档站](https://apifox.com/apidoc/shared-4301e565-a8df-48a0-85a5-bda2c4c3965a)

<details>
<summary>

     简略文档，请点击上面连接跳转详细使用部署文档站
</summary>

## 一键部署gpt4-copilot-java-sh(最强推荐)

```
# 安装git
(Ubuntu)
sudo apt update
sudo apt install git

（如Fedora、CentOS等）
sudo yum update
sudo yum install git

# 国内服务器
cd / && git clone https://gitee.com/yangyangEN/gpt4-copilot-java-sh.git

# 国外服务器
cd / && git clone https://github.com/Yanyutin753/gpt4-copilot-java-sh.git

# 运行脚本
cd /gpt4-copilot-java-sh && sudo sh install.sh

# 一键更新gpt4-copilot-java服务
cd /gpt4-copilot-java-sh && sudo sh update.sh

# 更新update.sh或者install.sh

# 国内
sudo rm -rf /gpt4-copilot-java-sh && cd / && git clone https://gitee.com/yangyangEN/gpt4-copilot-java-sh.git
# 国外
sudo rm -rf /gpt4-copilot-java-sh && cd / && git clone https://github.com/Yanyutin753/gpt4-copilot-java-sh.git
```


------------

## **非一键部署方式**
### **环境变量**
- **启动端口号**：server.port=8081
- **URL自定义后缀(选填)**：server.servlet.context-path=/tokensTool
    * 记住前面必须加上/，例如/tokensTool,/tool等

### **java部署详情**

```
# 先拿到管理员权限
sudo su -
# 提示你输入密码进行确认。输入密码并按照提示完成验证。
```

```
# 安装 OpenJDK 17：
sudo apt install openjdk-17-jdk
# 安装完成后，可以通过运行以下命令来验证 JDK 安装：
java -version
```

```
# 填写下面路径
cd （你的jar包的位置）
```

##### 运行程序
```
# 例如
nohup java -jar gpt4-copilot-java-0.0.1-SNAPSHOT.jar --server.port=8081 --server.servlet.context-path=/ > myput.log 2>&1 &

# 等待一会 放行8081端口即可运行（自行调整）
```

### **docker部署详情**
```
# 先拉取镜像
docker pull yangclivia/gpt4-copilot-java:latest
```
#### **1.手动部署PandoraNext启动命令**
```
docker run -d \
  --restart=always \
  -u root \
  --name gpt4-copilot-java \
  --net=host \
  --pid=host \
  --privileged=true \
  -e JAVA_OPTS="-XX:+UseParallelGC -Xms128m -Xmx128m -XX:MaxMetaspaceSize=128m" \ # 设置JVM参数（可适当调节，用copilot可以适当调大点，具体可问gpt了解）
  yangclivia/gpt4-copilot-java:latest \
  --server.port=8081 \
  --server.servlet.context-path=/ # 设置gpt4-copilot-java自定义后缀

```
#### **2.Docker部署PandoraNext启动命令**
```
docker run -d \ 
  --restart=always \ 
  -u root \ 
  --name gpt4-copilot-java \ 
  --net=host \ 
  --pid=host \ 
  --privileged=true \ 
  -e JAVA_OPTS="-XX:+UseParallelGC -Xms128m -Xmx128m -XX:MaxMetaspaceSize=128m" \ # 设置JVM参数（可适当调节，用copilot可以适当调大点，具体可问gpt了解）
  yangclivia/gpt4-copilot-java:latest \ 
  --server.port=8081 \ 
  --server.servlet.context-path=/ # 设置gpt4-copilot-java自定义后缀

```
----------
### **Docker Compose部署详情**
#### **代码模板**
```
version: '3'
services:
  gpt4-copilot-java:
    image: yangclivia/gpt4-copilot-java:latest
    # Java 的环境变量 （可适当调节，用copilot可以适当调大点，具体可问gpt了解）
    environment:  
      - JAVA_OPTS=-XX:+UseParallelGC -Xms128m -Xmx128m -XX:MaxMetaspaceSize=128m  
    container_name: gpt4-copilot-java
    restart: always
    user: root
    network_mode: host
    pid: host
    privileged: true
    command: 
      - --server.port=8081
      # 设置gpt4-copilot-java自定义后缀
      - --server.servlet.context-path=/
```

##### 启动gpt4-copilot-java
```
cd (你的docker-compose.yml位置)

docker-compose up -d
```

##### 更新gpt4-copilot-java项目代码
```
cd (你的docker-compose.yml位置)

docker-compose pull

docker-compose up -d
```
--------
</details>

> [!caution]
>
> * ❗使用copilot和cocopilot使用GPT-4有风险😂，可能会导致Github封号，请自行注册小号，小范围谨慎使>用!!!!!!
> * ！！！本工具🥰只提供转发copilot和始皇的cocopilot接口
> * 🦄感谢CaoYunzhou提供的实例
