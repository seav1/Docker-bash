FROM ubuntu

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY start.sh ./

RUN apt-get update &&\
    chmod +x start.sh

CMD [ "./start.sh" ]

EXPOSE 3000
