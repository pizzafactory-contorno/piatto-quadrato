FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:f4b0df44129b1fc51cfc490e4d48583f3e248be1967a6d6448b0203de3752282
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
