# banner
echo -e "\n====================================\n"
echo -e "\n* php安装 *\n"
echo -e "- OS: CentOS 7.4 64bit\n"
echo -e "\n====================================\n"

# yum安装依赖包
echo -e "\n-- 1) yum安装依赖包(libxml2 libxml2-devel ... libxslt libxslt-devel):\n"
yum install -y libxml2 libxml2-devel openssl openssl-devel bzip2 bzip2-devel libcurl libcurl-devel libjpeg libjpeg-devel libpng libpng-devel freetype freetype-devel gmp gmp-devel libmcrypt libmcrypt-devel readline readline-devel libxslt libxslt-devel
echo -e "\n------------------------------------\n"

# wget下载源码
echo -e "\n-- 2) wget下载源码:\n"
wget -O php-7.2.8.tar.gz http://cn2.php.net/get/php-7.2.8.tar.gz/from/this/mirror
echo -e "\n------------------------------------\n"

# 解压源码并进入源码目录
echo -e "\n-- 3) 解压源码并进入源码目录:\n"
tar -zxvf php-7.2.8.tar.gz
cd php-7.2.8
echo -e "\n------------------------------------\n"

# make
echo -e "\n-- 4) make && make install:\n"
./configure --enable-fpm --with-mysqli --disable-fileinfo
make
sudo make install
echo -e "\n------------------------------------\n"

# 初始化
echo -e "\n-- 5) 初始化:\n"
cp php.ini-development /usr/local/php/php.ini
cp /usr/local/etc/php-fpm.conf.default /usr/local/etc/php-fpm.conf
cp sapi/fpm/php-fpm /usr/local/bin
# 如果文件不存在,则阻止Nginx将请求发送到后端的PHP-FPM模块,以避免遭受恶意脚本注入的攻击
echo "cgi.fix_pathinfo=0" >> /usr/local/php/php.ini
# 在启动服务之前,需要修改php-fpm.conf配置文件,确保php-fpm模块使用www-data用户和www-data用户组的身份运行
echo -e "user = www-data\ngroup = www-data" >> /usr/local/etc/php-fpm.conf
echo -e "\n------------------------------------\n"

# 启动php-fpm服务
echo -e "\n-- 6) 启动php-fpm服务:\n"
/usr/local/bin/php-fpm
echo -e "\n------------------------------------\n"

# 配置nginx使其支持php应用
# location / {
#     root   html;
#     index  index.php index.html index.htm;
# }
# 下一步配置来保证对于.php文件的请求将被传送到后端的php-fpm模块,取消默认的php配置块的注释,并修改为下面的内容
# location ~* \.php$ {
#     fastcgi_index   index.php;
#     fastcgi_pass    127.0.0.1:9000;
#     include         fastcgi_params;
#     fastcgi_param   SCRIPT_FILENAME    $document_root$fastcgi_script_name;
#     fastcgi_param   SCRIPT_NAME        $fastcgi_script_name;
# }
# 重启nginx
# sudo /usr/local/nginx/sbin/nginx -s stop
# sudo /usr/local/nginx/sbin/nginx