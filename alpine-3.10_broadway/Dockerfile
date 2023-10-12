FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:5500f0be147879039fad572f2b244b9cbdd9a7daa64fd4861a51fdb14a254411
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
