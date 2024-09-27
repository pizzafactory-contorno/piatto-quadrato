FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:70c7656da82865f26845b4d9132164f1bc71ed28e92dc54b221800b0c580b2e7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
