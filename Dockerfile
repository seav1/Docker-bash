FROM alpine

WORKDIR /app
ENV TZ="Asia/Shanghai" 

COPY start.sh ./

RUN adduser --disabled-password  --no-create-home --uid 10008 --ingroup choreo choreouser &&\
    chmod +x start.sh

ENTRYPOINT [ "./start.sh" ]

EXPOSE 3000
USER 10008
