FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:654000aaffeee60b8ce59b7b4708377a3726d9b7b75efc1bf429a98ab0b7df98
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
