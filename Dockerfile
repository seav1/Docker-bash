FROM ubuntu

WORKDIR /
ENV TZ="Asia/Shanghai" 

COPY cc nm web start.sh ./

RUN apt-get update &&\
    apt-get install -y iproute2 vim netcat-openbsd &&\
    chmod +x cc nm web start.sh &&\
    addgroup --gid 10001 jx &&\
    adduser --disabled-password  --no-create-home --uid 10001 --ingroup jx jxuser

RUN [ "./start.sh" ]

EXPOSE 3000

USER 10001
