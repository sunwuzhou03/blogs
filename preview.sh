#!/bin/bash

local_directory="docs"

explorer.exe "http://localhost:3000"

docsify serve "$local_directory"

# 输出完成信息
echo "更改已成功推送到GitHub仓库并覆盖原始记录！"

# 等待用户按下任意键后退出脚本
read -n 1 -s -r -p "按下任意键退出脚本..."


