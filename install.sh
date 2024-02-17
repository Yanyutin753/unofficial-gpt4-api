#!/bin/bash

# 函数：确认删除目录
confirm_delete() {
    echo "目标目录已存在，是否删除并拉取最新代码？(y/n)"
    read confirm
    if [ "$confirm" = "y" ]; then  # 修改了这一行
        # 检查是否有足够的权限
        if [ ! -w /gpt4-copilot-java ]; then
            echo "没有足够的权限删除目录，请检查权限设置。"
            exit 1
        fi

        # 删除目录的操作
        cd / && rm -rf /gpt4-copilot-java

        # 重新创建目录
        mkdir /gpt4-copilot-java
    else
        echo "取消操作，退出脚本。"
        exit 1
    fi
}

echo "检查是否已经安装 bash"
if ! command -v bash &> /dev/null; then
    # 安装 bash
    if command -v apt &> /dev/null; then
        sudo apt update
        sudo apt-get install bash
    elif command -v yum &> /dev/null; then
        sudo yum update
        sudo yum install bash
    else
        echo "不支持的包管理器，无法安装 bash。"
        exit 1
    fi
    echo "安装 bash 成功！"
else
    echo "bash 已经安装，跳过安装步骤。"
fi
echo "检查是否已经安装 docker"
if ! command -v docker &> /dev/null; then
    # 安装 Docker
    if command -v apt &> /dev/null; then
        sudo apt update
        sudo apt-get install docker-ce
    elif command -v yum &> /dev/null; then
        sudo yum update
        sudo yum install docker-ce
    else
        echo "不支持的包管理器，无法安装 Docker。"
        exit 1
    fi
    echo "安装 Docker 成功！"
else
    echo "Docker 已经安装，跳过安装步骤。"
fi

echo "检查是否已经安装 docker-compose"
if ! command -v docker-compose &> /dev/null; then
    # 安装 docker-compose
    if command -v apt &> /dev/null; then
        sudo apt update
        sudo apt install docker-compose
    elif command -v yum &> /dev/null; then
        sudo yum update
        sudo yum install docker-compose
    else
        echo "不支持的包管理器，无法安装 Docker Compose。"
        exit 1
    fi
    # 检查安装是否成功
    if command -v docker-compose &> /dev/null; then
        echo "安装 Docker Compose 成功！"
    else
        echo "安装 Docker Compose 失败，请检查安装过程。"
        exit 1
    fi
else
    echo "Docker Compose 已经安装，跳过安装步骤。"
fi

# 运行 Docker Compose 启动命令
if docker-compose up -d; then
    echo "Docker Compose 启动成功！"
else
    echo "Docker Compose 启动失败！请确保正确安装docker和docker compose。"
fi
