FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:0d5c30f2540747884a232e04f8d525c81a7ea55a257d3e6d90bd066f836ffbc5
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
