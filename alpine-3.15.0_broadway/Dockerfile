FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:725ca2471025a72955e2b54ed3c1097c0810034c614ae7219fd563a76af53bf3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
