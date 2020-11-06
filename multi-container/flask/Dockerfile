FROM python:latest

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

ADD . /app

EXPOSE 5000

CMD ["python", "main.py"]