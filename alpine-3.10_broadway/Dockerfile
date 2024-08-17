FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:45393f90f271cf93e9e3cd11c2fe45f3b6ed026e891c0de4b49f6c8c79fae8fe
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
