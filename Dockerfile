FROM ubuntu:latest
MAINTAINER Siddik Acil "sddkacil.1@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD gunicorn --bind 0.0.0.0:$PORT serve:app