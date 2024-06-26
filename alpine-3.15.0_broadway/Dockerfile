FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:b1aa0cbef4d59b515dd07a1a751eb136b304a0a4fee67ed945146a0a6c61cab3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
