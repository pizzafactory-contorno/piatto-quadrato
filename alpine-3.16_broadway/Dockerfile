FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:e7cf4f3856b01ca5532b793a4f9192f87d65c8fefef9128a090cc17d98e909e6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
