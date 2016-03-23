FROM django:onbuild

RUN yum update -y
RUN yum install -y docker
RUN service docker start

RUN docker build -t my-django-app .
RUN docker run --name some-django-app -d my-django-app
 
