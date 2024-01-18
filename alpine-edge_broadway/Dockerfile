FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:2620d4e7095589a16379b2bcec638171b3f6855933321c080bc3c73fcaf6cd0d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
