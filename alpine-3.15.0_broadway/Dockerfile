FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:aa77ac562907f064201ab96bba0c00747e552d16a119c68e8004ca0ebdf609cc
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
