FROM ghcr.io/jdx/mise:latest AS mise
FROM ubuntu:22.04

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    build-essential \
    sudo \
    unzip \
    zsh \
    && rm -rf /var/lib/apt/lists/*

# Copy mise binary from official image
COPY --from=mise /usr/local/bin/mise /usr/local/bin/mise

# Create developer user with limited sudo for shell operations
RUN useradd -m -s /bin/zsh developer && \
    usermod -aG sudo developer && \
    echo 'developer ALL=(ALL) NOPASSWD: /usr/bin/chsh, /bin/chsh' >> /etc/sudoers

# Switch to developer user
USER developer

# Set working directory
WORKDIR /workspace

# Activate mise and set up shell integration
RUN echo 'eval "$(mise activate bash)"' >> ~/.bashrc

# Set default shell
SHELL ["/bin/bash", "-c"]