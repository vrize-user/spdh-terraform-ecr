# Use the official Ubuntu image as the base image
FROM ubuntu:latest

# Set environment variables to prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install necessary packages
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean

# Set default command to run when a container is started
CMD ["bash"]
