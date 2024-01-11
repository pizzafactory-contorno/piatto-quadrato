FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:93b32dfe27998479b46c314da6e1e28e5f18fba0ac4cc552fbc01ecdd1fabbaa
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
