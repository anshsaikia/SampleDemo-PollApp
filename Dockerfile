FROM django:onbuild 

RUN apt-get update
RUN apt-get install -y docker
CMD service docker start
ENV docker exec -it $container /bin/bash -c "export TERM=xterm; exec bash"
