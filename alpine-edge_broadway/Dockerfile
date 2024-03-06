FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:12d9673b73a61edd2a916e0d8174189a3fe6e245a019f301c26ae01955681e69
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
