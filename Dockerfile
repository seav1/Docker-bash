FROM debian:bullseye-slim

WORKDIR /app

COPY start.sh ./

RUN chmod +x start.sh

CMD ["./start.sh"]

EXPOSE 3000
USER 10001
