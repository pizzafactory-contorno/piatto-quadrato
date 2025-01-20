FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:a1035bc9b6e18b7973ab879bdaad7545b7d4ad5195c3ad9bff0b282f367b1337
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
