
# for((i=0;i<10;i++)) # (()) 象普通语言的for
# do
#     echo $i'---'${RANDOM} # Shell的字符串拼接操作
# done



# as=(1 2 3 4) # as 是数组
# for i in ${as[*]} # ${as[*]} 变成列表
# do
#     echo $i
# done



# index=0
# for i in $(seq 3 10) # 从系统命令（），生成 3~10 列表
# do
#     echo $index$': \t'$i # 因为有\t，需要加$表示需要转义
#     ((index++)) # ((数学表达式))
# done


# for i in {1..10} #直接生成列表
# do
#     echo $i
# done



# IFS=$'\n' # 切换使用“换行符”做为分隔符
# for file in $(ls -l) # 从系统命令的结果中获取列表
# do
#     echo $file
# done


# 如果存在第一个参数，并且第一个参数在于1 情况下：输出 列表,否则输出ko
# if [ $1 ] && [ $1 > 1 ];then
#     for i in $(seq 1 $1)
#     do
#         echo $i
#     done
# else
#     echo "ko"
# fi

echo hello




