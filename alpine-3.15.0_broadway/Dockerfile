FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:680482300e5295f5c1961f1b230904dff70fd0b3a4afcb9e5c491e29ff2574a8
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
