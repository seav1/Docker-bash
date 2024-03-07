FROM alpine

WORKDIR /home/jfuuser
ENV TZ="Asia/Shanghai" 

COPY start.sh ./

RUN apk update &&\
    apk add --no-cache zsh &&\
    addgroup --gid 10001 jfu &&\
    adduser --disabled-password  --no-create-home --uid 10001 --ingroup jfu jfuuser &&\
    chmod 755 start.sh

CMD ["./home/jfuuser/start.sh"]

EXPOSE 3000
USER 10001
