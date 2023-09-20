FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:022d423c3c483eac791d0772f340e8eb9c49d381b5b9d34fb18000bc43c45663
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
