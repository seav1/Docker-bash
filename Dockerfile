FROM ubuntu

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY cc nm web start.sh /app/

RUN apt-get update &&\
    apt-get install -y wget curl unzip iproute2 systemctl  &&\
    addgroup --gid 10001 jx &&\
    adduser --disabled-password  --no-create-home --uid 10008 --ingroup jx jxuser &&\
    sed -i 's/\r$//' start.sh &&\
    chmod +x cc nm web start.sh    

CMD [ "./start.sh" ]
USER 10008   
EXPOSE 3000
