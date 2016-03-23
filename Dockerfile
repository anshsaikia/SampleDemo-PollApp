FROM django:onbuild 

RUN apt-get update
RUN apt-get install -y docker
CMD service docker start

RUN docker build -t my-django-app .
RUN docker run --name some-django-app -d my-django-app
ENTRYPOINT [ “python”, “manage.py”, “runserver” ] 
