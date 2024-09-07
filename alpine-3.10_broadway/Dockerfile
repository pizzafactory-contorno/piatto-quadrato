FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:96e68235e2c0c7a8e23ef84ca9016c8b91c6d47bf88b5d5fa25aac1763f4ed26
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
