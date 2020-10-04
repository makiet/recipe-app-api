FROM python:3.8-alpine
MAINTAINER Makiet

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

WORKDIR /app
copy ./* /app/

RUN adduser -D user
USER user
