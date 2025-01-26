FROM python:alpine

RUN pip install faker

WORKDIR /app

COPY . .

CMD ["python", "/app/main.py"]
