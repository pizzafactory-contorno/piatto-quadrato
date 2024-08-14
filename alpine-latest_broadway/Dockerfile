FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:8837ac504594c183a975f7391419b2c080b77dd14bb87c9ea1e572a34ff5221e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
