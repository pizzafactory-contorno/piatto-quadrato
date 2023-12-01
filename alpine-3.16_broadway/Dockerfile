FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:bb5df2ac76957ad81735f85524b586bc3c36704d057b9f094e48f10b34b9990c
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
