#!/bin/bash
clear
printf "
#######################################################################
 一键安装AList                         
更多内容请访问：https://51.ruyo.net/16750.html
#######################################################################
"
rm -rf ./conf.yml
cp ./conf_tmp.yml ./conf.yml

read -p "输入阿里云盘token: " TOKEN 
read -p "输入要分享的目录ID（默认: root）: " _FOLDER

FOLDER=${_FOLDER:-root}
 

sed -i 's/\[refresh_token\]/'$TOKEN'/g' ./conf.yml 
sed -i 's/\[root\]/'$FOLDER'/g' ./conf.yml 


echo 请运行sh restart.sh 启动 
