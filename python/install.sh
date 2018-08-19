# banner
echo -e "\n====================================\n"
echo -e "\n* python安装 *\n"
echo -e "- OS: CentOS 7.4 64bit\n"
echo -e "\n====================================\n"

# yum安装依赖包
echo -e "\n-- 1) yum安装依赖包:\n"
yum install -y openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel
echo -e "\n------------------------------------\n"

# wget下载源码
echo -e "\n-- 2) wget下载源码:\n"
wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
echo -e "\n------------------------------------\n"

# 解压源码并进入源码目录
echo -e "\n-- 3) 解压源码并进入源码目录:\n"
tar -zxvf Python-3.7.0.tgz
cd Python-3.7.0
echo -e "\n------------------------------------\n"

# make
echo -e "\n-- 4) make && make install:\n"
./configure
make && make install
echo -e "\n------------------------------------\n"

# 添加软连
echo -e "\n-- 5) make && make install:\n"
ln -s /usr/local/bin/python3.7 /usr/bin/python3
echo -e "\n------------------------------------\n"

# 验证
echo -e "\n-- 6) python3 -V:\n"
python3 -V
echo -e "\n------------------------------------\n"
