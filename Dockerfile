# Start from a lightweight Debian-based image with Python
FROM python:3.9-slim

# Set the user to root to allow installation of packages
USER root

# Install sudo and curl (or any other packages)
RUN apt update && apt install -y sudo curl

# Create a non-root user
RUN useradd -m myuser

# Add the non-root user to the sudo group
RUN usermod -aG sudo myuser

# Set working directory
WORKDIR /home/myuser/app

# Copy index.html into the image
COPY index.html .

# Expose the port the app will run on
EXPOSE 80

# Switch to non-root user
USER myuser

# Command to run the HTTP server
CMD ["python3", "-m", "http.server", "80"]

