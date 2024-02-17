# gpt4-copilot-java

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yangclivia/gpt4-copilot-java/latest)![Docker Pulls](https://img.shields.io/docker/pulls/yangclivia/gpt4-copilot-java)[![GitHub Repo stars](https://img.shields.io/github/stars/Yanyutin753/gpt4-copilot-java-sh?style=social)](https://github.com/Yanyutin753/gpt4-copilot-java-sh/stargazers)

### 请给我免费的star⭐吧，十分感谢！

## 简介 
#### [gpt4-copilot-java](https://github.com/Yanyutin753/gpt4-copilot-java-sh) 中转copilot，cocopilot，回复流畅，支持高并发，支持一键脚本部署，小白也能快速使用！
#### [gpt4 copilot Java](https://github.com/Yanyutin753/gpt4-copilot-java-sh) Transfer Copilot, Cocopilot, smooth response, supports high concurrency, supports one click script deployment, and even novices can use it quickly!

-----

## **功能特性**

* **采用graalvm打包**，运行内存大幅度减小

* **自定义**，增加自定义获取token渠道

* **反代/copilot_internal/v2/token接口**

* **多线程**：使用springboot的多线程，满足高并发需求

* **回复打字机处理**：解决copilot回复断断续续的毛病

* **自定义后缀**：防止url被滥用

* **个人部署**：保障隐私安全

* **一键脚本**: 超级简单，小白轻松上手

* **使用手册**：方便接口接入其他第三方应用

## [✨点击查看文档站](https://apifox.com/apidoc/shared-4301e565-a8df-48a0-85a5-bda2c4c3965a)

<details>
<summary>

     简略文档，请点击上面连接跳转详细使用部署文档站
</summary>

## 使用方法
## 不准白嫖，请给我免费的star⭐吧，十分感谢！

## **linux部署**
### 部署gpt4-copilot-java-sh(最强推荐)

```
# 先安装docker and docker compose

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
```


------------
     
### **非一键部署方式**
#### **java部署详情**

```
# 先拿到管理员权限
sudo su -
# 提示你输入密码进行确认。输入密码并按照提示完成验证。
```
```
# 填写下面路径
cd （你的release包的位置）
```

##### 运行程序
```
# 例如
nohup ./gpt4-copilot-java

# 等待一会 放行8080端口即可运行（自行调整）
```

#### **docker部署详情**
```
# 先拉取镜像
docker pull yangclivia/gpt4-copilot-java:latest
```
##### **1.部署gpt4-copilot-java启动命令**
```
docker run -d --name gpt4-copilot-java \
  -v $(pwd)/config/config.json:/config.json \
  -p 8081:8080 \
  --restart always \
  yangclivia/gpt4-copilot-java:latest
```

----------
#### **Docker Compose部署详情**
##### **代码模板**
```
version: '3'
services:
  gpt4-copilot-java:  
    # 该服务使用的 Docker 镜像
    image: yangclivia/gpt4-copilot-java:latest
    # 为该服务创建的容器的名称
    container_name: gpt4-copilot-java
    volumes:
      - ./config/config.json:/config.json
    ports:
      - "8081:8080"
    # 容器总是重新启动
    restart: always  
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

## **window 部署**

### 拿到release里有关exe.zip文件，下载之后双击运行

## **mac 部署**

### 待续......


## **config.json环境变量**

- **启动端口号**：
    * `serverPort`= 8080

- **URL自定义后缀(选填)**：
    * `prefix` = /tokensTool
    * 记住前面必须加上/，例如/tokensTool,/gpt4等等
    
- **gpt4模型 每个字符间隔时间sleep time 单位ms（默认100）**
     - `gpt4_sleepTime` = 100
     
- **gpt3.5模型 每个字符间隔时间sleep time 单位ms（默认0）**
     - `gpt3_sleepTime` = 0
     
- **changeSleepTime's password**（默认为gpt4-copilot-java）
     - `password` = gpt4-copilot-java
    
-  **自定义get_token_url**
     - `get_token_url` = https://api.cocopilot.org/copilot_internal/v2/token
    
-  **自定义最大线程数**（默认为300）
     - `maxPoolSize` = 300
     
-  **自定义vscode的版本**（默认为vscode/1.85.2）
     - `vscode_version` = vscode/1.85.2

--------
</details>

> [!caution]
>
> * 使用copilot和cocopilot使用GPT-4有风险，可能会导致Github封号，请自行注册小号😂
> * 本项目只提供转发copilot和始皇的cocopilot接口🥰
> * 感谢CaoYunzhou提供的实例🦄

### 新增群聊，点了⭐️可以进群讨论部署，我把你们拉进群，无广，广子踢掉
<img src="https://github.com/Yanyutin753/PandoraNext-TokensTool/assets/132346501/6544e8ed-6673-48f9-95a6-c13255acbab1" width="300" height="300">

### 请给我一个免费的⭐吧！！！

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=Yanyutin753/gpt4-copilot-java-sh&type=Date)](https://star-history.com/#Yanyutin753/gpt4-copilot-java-sh&Date)
