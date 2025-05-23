# Use a small, modern Python image
FROM python:3.12-slim

# Create working directory inside the container
WORKDIR /app

# Copy dependency list & install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . .

# Expose the default port (80) – can be overridden at runtime
EXPOSE 80

# Run the application
CMD ["python", "app.py"]