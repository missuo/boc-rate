FROM python:3.11-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY boc-rate.py .

# Expose the application port
EXPOSE 6666

# Run the application
CMD ["python", "boc-rate.py"]
