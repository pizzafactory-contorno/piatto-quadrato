FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:d797b3dc1280861443caacb7f88fe0caad1d3685c63fbce88627c5db9850f0c7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
