# banner
echo -e "\n====================================\n"
echo -e "\n* nginx安装 *\n"
echo -e "- OS: CentOS 7.4 64bit\n"
echo -e "\n====================================\n"

# wget下载依赖包源码
echo -e "\n-- 1) wget下载依赖包源码(pcre zlib openssl):\n"
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.41.tar.gz
wget http://www.zlib.net/zlib-1.2.11.tar.gz
wget https://www.openssl.org/source/openssl-1.1.0h.tar.gz
echo -e "\n------------------------------------\n"

# wget下载源码
echo -e "\n-- 2) wget下载源码:\n"
wget http://nginx.org/download/nginx-1.15.2.tar.gz
echo -e "\n------------------------------------\n"

# 解压源码并进入源码目录
echo -e "\n-- 3) 解压源码并进入源码目录:\n"
tar -zxvf pcre-8.41.tar.gz
tar -zxvf zlib-1.2.11.tar.gz
tar -zxvf openssl-1.1.0h.tar.gz
tar -zxvf nginx-1.15.2.tar.gz
cd nginx-1.15.2
echo -e "\n------------------------------------\n"

# make
echo -e "\n-- 4) make && make install:\n"
# http://nginx.org/en/docs/configure.html
./configure \
    --sbin-path=/usr/local/nginx/nginx \
    --conf-path=/usr/local/nginx/nginx.conf \
    --pid-path=/usr/local/nginx/nginx.pid \
    --with-http_ssl_module \
    --with-pcre=../pcre-8.41 \
    --with-zlib=../zlib-1.2.11 \
    --with-openssl=../openssl-1.1.0h
make && make install
echo -e "\n------------------------------------\n"
