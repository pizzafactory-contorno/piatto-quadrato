FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:3d6728a61320545b7680e8af2c2acf8050e66b4e4214aec136183d6bf6364e24
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
