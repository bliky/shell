# Git 服务器搭建

# CentOS 安装Git
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-devel
yum install git

# 创建Git用户组和Git用户
groupadd git
useradd git -g git

# 创建证书登录
# 收集所有需要登录的用户的公钥，公钥位于id_rsa.pub文件中，把我们的公钥导入到/home/git/.ssh/authorized_keys文件里，一行一个。
cd /home/git/
mkdir .ssh
chmod 755 .ssh
touch .ssh/authorized_keys
chmod 644 .ssh/authorized_keys

# 初始化Git仓库
cd /home
mkdir gitrepo
chown git:git gitrepo/
cd gitrepo
git init --bare peco.git
chown -R git:git peco.git

# 克隆仓库
git clone git@47.106.128.182:/home/gitrepo/peco.git

# 分享代码到Github
# 添加远程仓库
git remote add origin git@github.com:bliky/peco.git
ssh-keygen -t rsa -C "blikylee@126.com"
# 将生成公钥 ~/.ssh/id_rsa.pub 赋值粘贴到GitHub "SSH and GPG keys"中
# 验证是否能连接到Github
ssh -T git@github.com
