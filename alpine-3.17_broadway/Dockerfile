FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:e0a4634dbfb9c44c09b47fd401f38ee16e8c269a602ec5e7d04306617fec6914
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
