FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:bac1919fdbae0df1544f0dbea00d2dfbe39f9c7ff3f5cb7e73e72ab59ac8c3f2
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
