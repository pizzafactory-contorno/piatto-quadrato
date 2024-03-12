FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:bc4effd5f1b736bfaa97dfe47462a2c28decc1dc49ed0e1a4cdb9a95bbe6e607
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
