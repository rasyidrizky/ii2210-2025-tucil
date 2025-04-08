FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir fastapi uvicorn[standard] pyotp sqlmodel

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "17787"]
