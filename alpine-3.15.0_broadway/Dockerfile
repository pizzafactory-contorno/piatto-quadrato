FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:2c430abea23165b6671bc428e83fd8275db76bd2c5825b8de05a87e484f2d9c2
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
