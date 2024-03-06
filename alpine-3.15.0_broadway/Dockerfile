FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:e98862d87745280252bf57a9b8503bda3af8c60739acc9417df755fd0dae1ee3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
