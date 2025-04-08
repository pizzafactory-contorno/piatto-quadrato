FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:477ffb1ab4da7e522764087f2dedd8a63e56f14e27f47a95a36db5be94266548
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
