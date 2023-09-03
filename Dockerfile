# Use an official Python runtime as the base image
FROM python:3.8-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY hello/app.py /app

# Copy the requirements.txt file from the hello folder into the container at /app
COPY hello/requirements.txt /app/requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which the Flask app will run
EXPOSE 5000

# Define the command to run your application
CMD ["python", "app.py"]
