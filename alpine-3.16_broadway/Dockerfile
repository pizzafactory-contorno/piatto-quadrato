FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:6d60ee593ca9ab2c3f1f6e8841346251723476131ed0a679600cf4a20e68fea4
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
