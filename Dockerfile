FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt || true
EXPOSE 5050
CMD ["python", "sample_app.py"]