FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:825d8c399d0336a68d5ca3e8fd19894eb432facbe92425d6cfb80d7943631c10
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
