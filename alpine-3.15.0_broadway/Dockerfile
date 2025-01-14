FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:ed10504c4e755ae344a7b1b5bde23c293238afbe3515f47d1565c54cb995791e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
