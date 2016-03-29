FROM django:onbuild 

RUN apt-get update
RUN apt-get install -y docker
CMD usermod -a -G docker jenkins
ENV docker exec -it $container /bin/bash -c "export TERM=xterm; exec bash"
