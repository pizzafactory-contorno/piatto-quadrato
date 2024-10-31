FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:d54449353bcbe421723b7d3c489ff1904d5ced48bf88a8247cacaccc3adbd50e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
