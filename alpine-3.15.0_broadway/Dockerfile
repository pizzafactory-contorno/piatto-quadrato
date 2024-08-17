FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:eba68c36bdb5acf6b77332dc7f6491857f9038464efdd65ef96b1e9e056f5e89
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
