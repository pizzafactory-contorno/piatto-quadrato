FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:e1dfb34147c93ff4805d4dd2579fc24f6b73b4007078753934ffcbdeea8edc63
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
