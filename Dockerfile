FROM apache/beam_python3.10_sdk:2.59.0

# Install curl and rclone
RUN apt-get update && apt-get install -y curl
RUN sudo -v && curl https://rclone.org/install.sh | sudo bash
