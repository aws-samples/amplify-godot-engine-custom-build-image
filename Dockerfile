ARG GODOT_VERSION="4.2"

FROM barichello/godot-ci:$GODOT_VERSION

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y --no-install-recommends \
    unzip \
    nodejs \
    jq \
    && rm -rf /var/lib/apt/lists/*

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf awscliv2.zip aws
