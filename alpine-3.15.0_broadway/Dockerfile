FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:bea1e12d994bceb81bef24399a3a32ed5f824d6ce987279ef0a7a2a86acea100
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
