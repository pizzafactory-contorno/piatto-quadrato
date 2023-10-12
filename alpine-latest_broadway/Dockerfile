FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:fef636429301ff8ce5aba0f205a0d18525216b38aa3f24b7a35bfb698679776e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
