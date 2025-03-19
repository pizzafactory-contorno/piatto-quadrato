FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:cd2b243fb279df0280499e0211156c656d491a84b97fe5d3c6db3b331da230e7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
