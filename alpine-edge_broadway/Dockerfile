FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:20eaf52e0ee2f0cf918c5ef86d583936c1c4e9f3616955a9cee02e00b49d7ddb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
