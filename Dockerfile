# sysntax=docker/dockerfile:1

FROM python:3.9.13-alpine

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN mkdir /app
WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY ./app /app
COPY . /app
#COPY ./app /app
#COPY manage.py /app
#COPY db.sqlite3 /app
#EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

