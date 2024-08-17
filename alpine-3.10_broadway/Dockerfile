FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:9c350ecde8fef592b7e44d1226372de27d2e64892359d5fef2ab6493401268b9
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
