FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:9c9a44e813a7d3853f2ac4198505a9bc7b41b4bfb9c87394c9d7e52d59b67060
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
