FROM ubuntu
EXPOSE 3000
WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY start.sh ./

RUN apt-get update &&\
    chmod +x start.sh

ENTRYPOINT [ "start.sh" ]
