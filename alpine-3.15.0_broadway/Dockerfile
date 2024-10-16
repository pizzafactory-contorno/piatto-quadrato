FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:1e78d20995b2025fd9edb1a760cd691ef11332f76f20890fa8b3e2fbc16bfd99
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
