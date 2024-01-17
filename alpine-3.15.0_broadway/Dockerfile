FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:1dce62222acebcf3b3dc44d3b3371d03b3a5258516d2a3b4fb8a72d4d744001b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
