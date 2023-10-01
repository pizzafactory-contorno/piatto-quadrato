FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:74c97f9b7517f48d127828722852bc1fe30acd77fa008cf0cafd2de39b5f8319
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
