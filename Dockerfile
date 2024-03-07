FROM debian:bullseye-slim

WORKDIR /home/jfuuser
ENV TZ="Asia/Shanghai" 

COPY start.sh ./

RUN chmod +x start.sh

CMD ["/bin/sh","./start.sh"]

EXPOSE 3000
USER 10001
