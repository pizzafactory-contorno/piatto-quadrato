FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:575be181b4e3e926b53ce38b1262ff22128776f3b634e37247d95542ca97a0a3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
