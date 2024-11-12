#!/bin/sh

# 获取脚本所在的目录
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 定义本地目录变量，使用脚本所在目录的路径
local_directory="$script_dir/docs"

# 启动docsify服务，并在后台运行
docsify serve "$local_directory" &

# 在默认浏览器中打开指定的本地地址
open "http://localhost:3000"

# 输出完成信息
echo "本地服务器已启动，文档服务中..."

# 等待用户按下任意键后退出脚本
read -n 1 -s -r -p "按下任意键退出脚本..."
echo # 打印一个新行，为了美观

# 杀死后台运行的docsify进程
pkill -f docsify

# 提示用户脚本已退出
echo "脚本已退出。"