FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:e4984a2099e1fbe6e4fefe6a5bab9ce2e495561e8688450720cd26012a33e183
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
