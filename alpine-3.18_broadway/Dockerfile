FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:7c757d7e60514dbda97ddac59c784773f36afa8fdda71839eee21bd145ba6407
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
