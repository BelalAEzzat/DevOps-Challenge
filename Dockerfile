FROM python:3.7-alpine
WORKDIR /code
RUN apt-get update && apt-get install python-pip
COPY requirements.txt requirements.txt
run pip install -r requirements.txt
EXPOSE 6379
CMD export $(cat .env | xargs) && python hello.py
