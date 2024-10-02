FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:029ad94bf1eb9320ccbeabc0c6009b61c6fc8c701c0f6a3d5abcd75e5d323a7b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
