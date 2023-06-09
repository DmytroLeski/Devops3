FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

COPY check_web_server.sh /usr/local/bin/check_web_server.sh

RUN chmod +x /usr/local/bin/check_web_server.sh

CMD while true; do /usr/local/bin/check_web_server.sh; sleep 30; done