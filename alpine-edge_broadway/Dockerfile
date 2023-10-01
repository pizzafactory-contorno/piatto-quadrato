FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:1b6d231e0853b720253ec973822e03b284ec44c89eff7b0d8f065d8dd6f33ee1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
