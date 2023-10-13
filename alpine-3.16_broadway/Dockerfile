FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:cd69a47bfa0a02efad22062419f00d2faeba93f92579c91609e7ec8e16aa048a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
