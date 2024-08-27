# Use the official Ubuntu base image
FROM ubuntu:20.04

# Set environment variable to disable interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install tzdata for timezone configuration
RUN apt-get update && \
    apt-get install -y tzdata && \
    # Replace 'Asia/Kolkata' with your desired timezone
    cp /usr/share/zoneinfo/Asia/Kolkata /etc/localtime && \
    echo "Asia/Kolkata" > /etc/timezone && \
    # Clean up to reduce image size
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Additional Dockerfile instructions go here

# Example: Install other dependencies or copy application files
# RUN apt-get install -y <other-packages>

# Example: Copy application files
# COPY . /app

# Example: Set working directory
# WORKDIR /app

# Example: Expose port (if needed)
# EXPOSE 8080

# Example: Command to run your application
# CMD ["your-command"]
