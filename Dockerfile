FROM python:3.11-slim

WORKDIR /app

# System dependencies needed for building some packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=10000
EXPOSE 10000

CMD ["python", "app.py"]
