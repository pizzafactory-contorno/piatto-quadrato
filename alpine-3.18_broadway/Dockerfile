FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:b3cb45bea0a039f0a3ef87a1b39c6ca2f70ac6075fe86cc36e3b0b699b9208d5
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
