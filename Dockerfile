FROM ubuntu

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY cc nm web start.sh /app/

RUN apt-get update &&\
    apt-get install -y wget curl unzip iproute2 systemctl  &&\
    chmod +x cc nm web start.sh
    addgroup --gid 10001 jx &&\
    adduser --disabled-password  --no-create-home --uid 10001 --ingroup jx jxuser

CMD [ "./start.sh" ]
USER 10001   
EXPOSE 3000
