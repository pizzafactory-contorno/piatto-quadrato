FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:20c1b1248842ee14b5a24e7fa2a47044bc9df37dd2c7372866df25a356f687bb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
