FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:98492a2cadecf1aa681272ef9c8946378c83ab8775fd018bc296417f7b5b286f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
