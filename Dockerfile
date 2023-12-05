FROM ubuntu

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY cc nm web start.sh /app/

RUN chmod +x cc nm web start.sh

CMD [ "./start.sh" ]

EXPOSE 3000
