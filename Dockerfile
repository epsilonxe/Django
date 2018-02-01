FROM python:3-alpine
ENV PYTHONUNBUFFERED 1
RUN mkdir /src
WORKDIR /src
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /src/
