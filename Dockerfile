FROM python:3.9.5-alpine3.13
MAINTAINER Ossama

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN apk add --no-cache bash
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./todo_app /app
