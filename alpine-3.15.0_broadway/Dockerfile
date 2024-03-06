FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:6372b27c6275dd0d1a21e17140c0effe2bf0184b762e48477664c8054315fbc1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
