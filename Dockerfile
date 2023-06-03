# Use an official Python runtime as the base image
FROM python:3.8-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies
RUN pip install -r requirements.txt

# Expose the port on which the Flask app will run
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
