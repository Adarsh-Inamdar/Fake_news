# Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code into the container
COPY . .

# Expose the application port (change 8080 if needed)
EXPOSE 8080

# Start the Flask application with Waitress
CMD ["waitress-serve", "--host=0.0.0.0", "--port=8080", "app:app"]
