#!/bin/bash 
echo ################################################################
echo #
echo # ubuntu安装vsftp
echo #
echo ################################################################
  
# 更新系统软件包列表  
sudo apt-get update  
  
# 安装VSFTPD  
sudo apt-get install -y vsftpd  
  
# 启用并启动VSFTPD服务  
sudo systemctl enable --now vsftpd  
  
# 配置VSFTPD（简单示例，通常需要根据具体需求修改）  
# 备份原始配置文件  
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.bak  
  
# 设置匿名上传（可选，根据需要配置）  
echo "write_enable=YES" | sudo tee -a /etc/vsftpd.conf  
echo "anon_upload_enable=YES" | sudo tee -a /etc/vsftpd.conf  
echo "anon_mkdir_write_enable=YES" | sudo tee -a /etc/vsftpd.conf  
  
# 重启VSFTPD服务以应用更改  
sudo systemctl restart vsftpd  
  
# 显示服务状态，确认服务正在运行  
sudo systemctl status vsftpd  
  
echo "VSFTPD 安装并配置成功！"
