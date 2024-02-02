FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:3b067c20c5d15f668ea1125d240c141316b4eaaf1422765104ffae0507627c7f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
