FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:338ddf84c90c1ef42058d93da538fb17d096e7d15826d4a44c19e3695df9fc11
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
