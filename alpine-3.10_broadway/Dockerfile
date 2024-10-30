FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:5dd1f1dacce8ff1e4b7b58e299dd32ad03c681c1dd93da78f264148da41db587
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
