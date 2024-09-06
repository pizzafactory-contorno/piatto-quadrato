FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:72c5faa968ec1ac1f730b7305c7830cc9a9753317fb01b4f3ac10c700c68e4e7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
