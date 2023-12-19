FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:4872fe1be465e4ea93832f03c600c9abe98ca0898757fc91c50e4d023f0acc57
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
