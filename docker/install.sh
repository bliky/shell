# banner
echo -e "\n====================================\n"
echo -e "\n* docker安装(yum) *\n"
echo -e "- OS: CentOS 7.4 64bit\n"
echo -e "\n====================================\n"

# 安装依赖包
echo -e "\n-- 1) 安装依赖包:\n"
sudo yum install -y yum-utils \
                    device-mapper-persistent-data \
                    lvm2
echo -e "\n------------------------------------\n"

# 增加库
echo -e "\n-- 2) 增加库:\n"
sudo yum-config-manager \
     --add-repo \
     https://download.docker.com/linux/centos/docker-ce.repo
echo -e "\n------------------------------------\n"

# 安装指定版本的docker-ce
echo -e "\n-- 3) 安装:\n"
sudo yum install -y docker-ce-17.12.1.ce-1.el7.centos
echo -e "\n------------------------------------\n"

# 启动docker
echo -e "\n-- 4) 启动:\n"
sudo systemctl start docker
echo -e "\n------------------------------------\n"

# 验证docker
echo -e "\n-- 5) 验证:\n"
docker --version
docker image ls
# docker info
# docker container ls -a
echo -e "\n------------------------------------\n"
