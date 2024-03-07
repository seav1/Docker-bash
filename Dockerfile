FROM debian:bullseye-slim

WORKDIR /app

COPY start.sh ./

RUN apt-get update && apt-get install -y wget curl unzip systemctl &&\
    chmod 777 start.sh

CMD ["./start.sh"]

EXPOSE 3000
USER 10001
