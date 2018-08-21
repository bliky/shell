ssh -i ~/docker-ci-server.pem root@120.77.224.152 "if [ ! -d ./bin ]; then mkdir bin; fi"

chmod -R +x ./test/bin && \
      scp -i ~/docker-ci-server.pem ./test/bin/* root@120.77.224.152:bin && \
      ssh -i ~/docker-ci-server.pem root@120.77.224.152 "if [ -x ~/bin/path_list.sh ]; then ~/bin/path_list.sh > path_list_$(date +%Y%m%d_%H%M%S).out; fi"
