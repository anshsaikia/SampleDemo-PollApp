FROM django:onbuild 

RUN apt-get update
RUN apt-get install -y docker
CMD service docker start
ENTRYPOINT [ “python”, “manage.py”, “runserver” ] 
