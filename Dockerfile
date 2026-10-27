FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY test_app.py .

CMD ["python", "-c", "from app import add; print('Application running. 2 + 3 =', add(2, 3))"]
