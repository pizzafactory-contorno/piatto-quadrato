FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:e07c4daa2a5603ef46b83ab9c0f2ceaf7fe64c05f30ca3ac6125429734e784e4
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
