FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN python3 -m venv venv
RUN source venv/bin/activate
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
