# Dockerfile
FROM python:3.13.5
WORKDIR /app
COPY app.py /app
COPY template /app
RUN pip install flask
CMD ["python", "app.py"]
