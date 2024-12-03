FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:b34ddaa154b5b6cc6f99fd772bf26487fedeed38afcc869e6b8bea3bebed2966
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
