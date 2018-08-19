# banner
echo -e "\n====================================\n"
echo -e "\n* git安装(yum) *\n"
echo -e "\n====================================\n"


# yum安装git依赖
echo -e "\n-- 1) 安装依赖(curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-devel):\n"
yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-devel
echo -e "\n------------------------------------\n"

# yum安装git
echo -e "\n-- 2) 安装git:\n"
yum install -y git
echo -e "\n------------------------------------\n"

# 创建git用户组和用户
echo -e "\n-- 3) 创建git用户组和用户:\n"
groupadd git
useradd git -g git
echo -e "\n------------------------------------\n"
