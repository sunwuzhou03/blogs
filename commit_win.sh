#!/bin/bash

# 设置仓库URL和本地文件路径
repository_url="https://github.com/sunwuzhou03/blogs.git"

local_directory="./"

# 进入本地仓库目录
cd "$local_directory"

# 添加所有更改的文件
git add .

# 提交更改并添加提交信息
git commit -m "commit"

# 推送更改到GitHub仓库
git push --force "$repository_url" main

# 输出完成信息
echo "更改已成功推送到GitHub仓库并覆盖原始记录！"

# 等待用户按下任意键后退出脚本
read -n 1 -s -r -p "按下任意键退出脚本..."
