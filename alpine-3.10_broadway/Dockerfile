FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:ef7af6bdacf4a0cc84c511d8106d96ca5f9c274bd432cc74af089ab4e83cffad
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
