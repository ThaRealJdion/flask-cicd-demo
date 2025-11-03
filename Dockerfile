# Use a lightweight base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 8080

# Start Flask app
CMD ["python", "app.py"]