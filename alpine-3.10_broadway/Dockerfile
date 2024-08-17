FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:af56486a377a4d5c713edeeb821e2ded3dbfa2743266c0ba9d1077b968b95700
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
