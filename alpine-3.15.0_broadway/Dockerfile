FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:6ebc991d1b86a34312627f50d7b9a585d2b349d7cf9c6ab147815494b643332f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
