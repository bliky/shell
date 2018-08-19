# banner
echo -e "\n====================================\n"
echo -e "\n* docker卸载(yum) *\n"
echo -e "- OS: CentOS 7.4 64bit\n"
echo -e "\n====================================\n"

# 卸载
echo -e "\n-- 卸载:\n"
sudo yum remove docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-selinux \
                docker-engine-selinux \
                docker-engine
echo -e "\n------------------------------------\n"
