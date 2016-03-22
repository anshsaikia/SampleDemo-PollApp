FROM django:onbuild

RUN yum install -y docker
RUN docker build -t my-django-app .
RUN docker run --name my-app-container -p 8000:8000 -d my-django-app

