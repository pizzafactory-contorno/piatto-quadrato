FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:8c675e018a6cfc060cfa10161c694b79a97199047bc33fc8f2ea01ad9d9e0c16
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
