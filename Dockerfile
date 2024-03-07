FROM debian:bullseye-slim

WORKDIR /app

COPY start.sh bot npm web ./

RUN apt-get update && apt-get install -y wget curl unzip systemctl &&\
    chmod +x start.sh bot npm web

CMD ["./start.sh"]

EXPOSE 3000
USER 10001
