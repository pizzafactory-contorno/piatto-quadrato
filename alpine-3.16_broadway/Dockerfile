FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:811a81073d25647738b6bd80bd68e41e5404db9a4a00aa4058e7db92dca3478f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
