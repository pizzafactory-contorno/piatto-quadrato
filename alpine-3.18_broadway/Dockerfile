FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:78bdeee47f1545bd981882b628ab4bb4da447bb47dee2045f5b2ee5664f53ca9
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
