FROM ubuntu

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY start.sh /app/

RUN apt-get update &&\
    chmod +x start.sh

ENTRYPOINT ["./start.sh"]

USER 10008   
EXPOSE 3000
