FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements and install
COPY applications/backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY applications/backend/app ./app

# Expose port
EXPOSE 80

# Run the FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

