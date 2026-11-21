# Base image: Python on a slim Debian
FROM python:3.12-slim

# Working directory inside the image
WORKDIR /app

# Copy dependency list first, install (this order enables caching)
COPY requirements.txt .
RUN pip install --no-cache-dir \
    --default-timeout=100 \
    --retries=10 \
    -r requirements.txt

# Copy the rest of the app
COPY app.py .

# Document the port the app uses
EXPOSE 8080

# Run as a non-root user (important for OpenShift later)
RUN useradd --create-home appuser
USER appuser

# Command to run when the container starts
CMD ["python", "app.py"]
