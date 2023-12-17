FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:154351f98e0504a6dde8c003536009ca2c8ea8c3c2c937bce1158ba22d1d6c0c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
