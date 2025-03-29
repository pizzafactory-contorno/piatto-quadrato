FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:1d79dfb242bc89ea1c3a54e7f0edca4cc570b63760e4a6c7d0056709444efc93
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
