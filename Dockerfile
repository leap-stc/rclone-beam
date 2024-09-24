FROM apache/beam_python3.10_sdk:2.59.0

# Install rclone
RUN apt-get update && apt-get install -y curl
RUN curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip \
    && unzip rclone-current-linux-amd64.zip \
    && cp rclone-*-linux-amd64/rclone /usr/bin/ \
    && chown root:root /usr/bin/rclone \
    && chmod 755 /usr/bin/rclone \
    && mkdir -p /usr/local/share/man/man1 \
    && cp rclone-*-linux-amd64/rclone.1 /usr/local/share/man/man1/ \
    && mandb