# banner
echo -e "\n====================================\n"
echo -e "\n* nodejs安装(yum) *\n"
echo -e "- OS: CentOS 7.4 64bit\n"
echo -e "\n====================================\n"

# 设置安装版本
echo -e "\n-- 1) 设置安装版本:\n"
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
# curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
echo -e "\n------------------------------------\n"

# 安装
echo -e "\n-- 2) 安装:\n"
sudo yum -y install nodejs
echo -e "\n------------------------------------\n"
