FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:c97a360b374bec48a2983405a7a5fb1fa37dd74269cc9ba5e4cdcaa5ff2ee763
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
