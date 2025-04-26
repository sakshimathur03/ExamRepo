# Use the Python 3.8 base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy everything from the current directory to /app in the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5000

# Run the app
CMD ["python", "app.py"]
