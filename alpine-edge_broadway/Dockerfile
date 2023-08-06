FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:1db276707866f9c7e20a634c043bcfaf8a0eeb5385272cac9eec5d21a5e2dd2d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
