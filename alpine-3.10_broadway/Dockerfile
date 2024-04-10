FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:30a0fdf1a9cd06a98136b791dbc7cacbe2e6037d7c1c899d054202b74b8f3494
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
