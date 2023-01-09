FROM python:3.6.15-slim-buster

WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /app/

RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT ["python3"]
CMD ["application.py"]