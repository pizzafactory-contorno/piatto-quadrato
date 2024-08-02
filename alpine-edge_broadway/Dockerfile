FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:36b0cb4a4ed51da4ef7aebb5dcd1ead3a0746a08e602272dc8b2091140c70dfc
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
