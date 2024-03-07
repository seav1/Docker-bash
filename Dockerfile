FROM alpine

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY start.sh ./

RUN chmod +x start.sh

ENTRYPOINT [ "./start.sh" ]

EXPOSE 3000
