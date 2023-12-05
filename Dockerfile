FROM debian:9-slim

WORKDIR /
ENV TZ="Asia/Shanghai" 

COPY cc nm web start.sh ./

RUN chmod +x cc nm web start.sh

CMD [ "./start.sh" ]

EXPOSE 3000
