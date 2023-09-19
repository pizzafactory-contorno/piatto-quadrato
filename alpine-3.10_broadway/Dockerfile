FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:53f07ef03966c79cb3f05fd8080eb17cc3e03d1ce523775b6dd457373090444f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
