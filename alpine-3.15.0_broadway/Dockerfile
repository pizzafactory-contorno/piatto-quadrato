FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:618acceaa09052dd476e5c12b0cfbe8b52bc3797b7a90d5f784f28b642ff01e0
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
