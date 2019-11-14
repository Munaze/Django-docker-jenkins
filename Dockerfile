FROM python:3.7.3

ADD . /var/www/sample-django-app

WORKDIR /var/www/sample-django-app

RUN pip3 install -r requirements.txt

EXPOSE 8002

RUN ["chmod", "+x", "manage.py"]

RUN  ["manage.py", "migrate"] 

RUN  ["manage.py", "test", "testwebapp"]

CMD  ["manage.py", "runserver", "0.0.0.0:8002"]
