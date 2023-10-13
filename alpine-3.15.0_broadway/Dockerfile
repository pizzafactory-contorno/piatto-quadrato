FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:76f1dfa85be8c3cac168698fd4028db664a0ae3c169eb9e9c9bf323b7d9399f8
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
