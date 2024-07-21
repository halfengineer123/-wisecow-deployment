
FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y cowsay fortune bash netcat-openbsd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY wisecow.sh /wisecow.sh

RUN chmod +x /wisecow.sh

# Expose the port
CMD ["/wisecow.sh"]
