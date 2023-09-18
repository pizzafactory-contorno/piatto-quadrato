FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:173e5deccb05087a8a6f7703361397b6a9e45a9b9c5d080c4a2ddb3dd9f2cd64
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
