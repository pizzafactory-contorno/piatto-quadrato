FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:2c4f1c72608b1aa24bc3c384fc6fe7e9f4a055a47f1528810cbcd4da5f2c99d5
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
