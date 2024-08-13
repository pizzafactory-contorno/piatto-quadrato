FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:892c737d449a8068964d8a56fbc926a8b45ffaa8ee7102ed73d0a4607cc7c5a6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
