FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:60719e74719fd1ef7cc0463a4cb3416c164ff6a09e10471b13930b21f3730400
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
