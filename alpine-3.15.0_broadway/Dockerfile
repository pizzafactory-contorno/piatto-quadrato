FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:15e05564d9123f3b81e45e081221cf7f5a126f1f593494b15d0904cce9a6b168
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
