FROM debian:testing

ARG DEBIAN_FRONTEND=noninteractive

# 安装基础命令行工具
RUN apt upgrade -Uy && \
    apt install -y --no-install-recommends \
    ca-certificates apt-transport-https \
    bash-completion sudo wget curl git tini && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# 安装opencode
RUN wget -qO- 'https://github.com/anomalyco/opencode/releases/latest/download/opencode-linux-x64.tar.gz' | tar -xzf - -C /usr/local/bin
COPY --chown=root:root --chmod=755 entrypoint.sh /usr/local/bin/entrypoint.sh

# 允许Agent使用sudo
RUN useradd -m -u 1000 -s /bin/bash user && \
    usermod -aG sudo user && \
    echo "user:password" | chpasswd

USER user
ENTRYPOINT ["tini", "--"]
CMD ["/usr/local/bin/entrypoint.sh"]