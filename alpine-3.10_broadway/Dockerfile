FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:3192d9de03366ccf9408bd5cc76e590cce65c218d32c2c49076f15b23b16341c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
