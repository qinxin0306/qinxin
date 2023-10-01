#!/bin/bash

# 检查输入参数的数量
if [ "$#" -ne 2 ]; then
    echo "用法: $0 <行数> <列数>"
    exit 1
fi

# 检查输入参数是否为正整数
if ! [[ "$1" =~ ^[1-9][0-9]*$ ]] || ! [[ "$2" =~ ^[1-9][0-9]*$ ]]; then
    echo "行数和列数必须是正整数。"
    exit 1
fi

# 获取行数和列数参数
rows="$1"
cols="$2"

# 循环生成乘法表
for ((i=1; i<=rows; i++))
do
    for ((j=1; j<=cols; j++))
    do
        # 计算乘积
        product=$((i * j))
        
        # 输出乘法式子
        printf "%d*%d=%-3d  " $i $j $product
    done
    # 在每行结束时换行
    echo
done

