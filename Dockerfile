FROM debian:buster

# Set the environment to noninteractive to avoid prompts during package installations
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies and Ruby gem
RUN apt-get update && \ apt-get install -y build-essential libreadline-dev zlib1g-dev libssl-dev git curl ruby-dev gobjdump && \ gem install ecutools --version 0.0.4 --no-format-exec

# Set the working directory
WORKDIR /app

# Copy your application code into the container if needed
# COPY . .

# Expose any necessary ports
# EXPOSE 80

# Command to run your application
# CMD ["ruby", "your_script.rb"]

ENTRYPOINT ["ecutools"]
CMD ["--help"]
