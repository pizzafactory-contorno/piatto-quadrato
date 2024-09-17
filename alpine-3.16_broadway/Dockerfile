FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:667bfc843e6bf081e2eb4d021cbef9228fb977f67ed1bb173f512dbc888886e6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
