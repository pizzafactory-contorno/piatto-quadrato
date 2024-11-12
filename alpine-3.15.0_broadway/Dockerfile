FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:bd2778e9df68b24f0e36879e86bf912b67e95562f3d3542a1ea00384c6140fb5
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
