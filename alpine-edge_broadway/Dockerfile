FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:beaeeb99a830a5889fee78add779c0a91dc9f82e0fd1465d1ba34adfbaa5da1e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
