FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:327c01bec52f15ef3546f44dd2917fef32bac34346849962ce2a10a9f97ca674
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
