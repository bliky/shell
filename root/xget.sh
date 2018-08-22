if [ $# -eq 0 ]; then
  set download "*/*.sh" tengine-centos7
fi

if [ $# -eq 1 ]; then
  set $1 "*/*.sh" tengine-centos7
fi

if [ $# -eq 2 ]; then
  set $1 $2 tengine-centos7
fi

if [ ! -d $1 ]; then
  mkdir $1
fi

scp -i ~/docker-ci-server.pem root@120.77.224.152:$3/$2 $1
