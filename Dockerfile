FROM ubuntu:latest 

RUN apt-get update
RUN apt-get install -y docker
RUN service docker start

RUN docker build -t my-django-app .
RUN docker run --name some-django-app -d my-django-app
 
