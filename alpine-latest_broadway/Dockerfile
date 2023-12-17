FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:9d0dea8a7aead0547d8c0e62cac044513aaeee2d83976f11c0578b18e73ec63a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
