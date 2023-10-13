FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:196d524d5f069cc112eedc830150106325fdf2ce2d3482d90ae0b7b941f55697
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
