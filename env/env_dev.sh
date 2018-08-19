# banner
echo -e "\n====================================\n"
echo -e "\n* 系统开发环境信息 *\n"
echo -e "\n====================================\n"

# /usr/local/bin
echo -e "\n-- 1) /usr/local/bin:\n"
ls -l /usr/local/bin
echo -e "\n------------------------------------\n"

# /usr/local/lib
echo -e "\n-- 2) /usr/local/lib:\n"
ls -l /usr/local/lib
echo -e "\n------------------------------------\n"

# 查看git ~/.ssh
echo -e "\n-- 4) git ~/.ssh:\n"
echo "git:"
which git
git --version
echo -e "\n~/.ssh:"
ls -al ~/.ssh
echo -e "\n------------------------------------\n"

# 查看nginx php mysql
echo -e "\n-- 5) nginx php mysql:\n"
echo "which:"
which nginx && which php && which mysql
echo -e "\nwhereis:"
whereis nginx && whereis php && whereis mysql
echo -e "\n------------------------------------\n"

# 服务端脚本
echo -e "\n-- 6) python php:\n"
echo "python:"
which python && whereis python && python --version
echo -e "\nphp:"
php -v && php -m
echo -e "\n------------------------------------\n"

# 查看nodejs npm
echo -e "\n-- 7) nodejs npm:\n"
echo "node -v:"
node -v
echo -e "\nnpm -v:"
npm -v
echo -e "\n------------------------------------\n"
