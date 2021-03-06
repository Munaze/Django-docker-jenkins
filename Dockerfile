FROM python:3.7.3

ADD . /var/www/sample-django-app

WORKDIR /var/www/sample-django-app

RUN pip3 install -r requirements.txt

EXPOSE 8002

RUN  ["python", "manage.py", "migrate"] 

RUN  ["python", "manage.py", "test", "testwebapp"]

CMD  ["python", "manage.py", "runserver", "0.0.0.0:8002"]
