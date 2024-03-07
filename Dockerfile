FROM alpine

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY start.sh /app/

RUN chmod +x start.sh

ENTRYPOINT [ "./start.sh" ]

EXPOSE 3000
