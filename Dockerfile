FROM ubuntu

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY cc nm web start.sh /app/

RUN apt-get update &&\
    apt-get install -y wget curl unzip iproute2 systemctl  &&\
    chmod +x cc nm web start.sh

CMD [ "./start.sh" ]

EXPOSE 3000
