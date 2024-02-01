FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:efaee6bee4c0ac2dcfb03a7c367225235967aa5526678b5a25b4f33ff4820239
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
