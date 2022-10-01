FROM python:3.7-alpine
WORKDIR /DevOps-Challenge
ADD . .
RUN apk update && apk add py-pip
RUN pip install redis==3.0.1 && tornado==5.1.1
EXPOSE 6379
CMD export $(cat .env | xargs) && python hello.py


