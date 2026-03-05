# Include Python
FROM python:3.12-slim

# Label your image with metadata
LABEL maintainer="info@blib.la"
LABEL org.opencontainers.image.source https://github.com/blib-la/runpod-worker-helloworld
LABEL org.opencontainers.image.description "Getting started with a serverless endpoint on RunPod by creating a custom worker"

WORKDIR /

# Copy your source code into the image
COPY src/ .

# Make the start script executable
RUN chmod +x start.sh

# Define your working directory
WORKDIR /app

# Copy the requirements into the image
COPY requirements.txt .

WORKDIR /

# Run the start script
CMD ["/start.sh"]