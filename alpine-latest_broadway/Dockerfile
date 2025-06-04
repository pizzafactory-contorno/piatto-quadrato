FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:48325e7024bd915fcaf0d9af5b4e373ba0858656e4201ac30bcc7508988cd737
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
