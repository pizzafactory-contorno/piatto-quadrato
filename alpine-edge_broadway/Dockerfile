FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:a212864b5119bf20067bbbaf41e6c87f5de8ea7c1b132c75bcd1594df57da09a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
