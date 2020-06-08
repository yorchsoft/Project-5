FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]