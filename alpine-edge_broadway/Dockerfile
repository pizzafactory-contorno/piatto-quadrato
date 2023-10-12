FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:95c0f67aecf30fc8ba64cf3789e0ea1a37b32b1660d35364da9bc327023539f2
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
