FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:73c3170c9c92081a0b3a2ea56cb5c92476ba3b226dca7b0590707cb09f6030fc
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
