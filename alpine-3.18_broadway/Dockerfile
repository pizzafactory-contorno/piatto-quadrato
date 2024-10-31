FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:1d83026c64e2f0d5dc2f68f7b6f7fce086fb8a21453e1f83a54cc7065280a300
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
