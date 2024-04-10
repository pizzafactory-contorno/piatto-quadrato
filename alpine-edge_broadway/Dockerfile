FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:1416c640e54f5fe040ddee8409941e2d03ec514969c3b20ad0949dd4bc675c7c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
