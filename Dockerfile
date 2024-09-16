# Start by pulling the Python image
FROM python:3.11-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only the requirements file into the image
COPY requirements.txt /app/

# Install the dependencies
RUN pip install -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Set the command to run your application
CMD ["python", "app.py"]
