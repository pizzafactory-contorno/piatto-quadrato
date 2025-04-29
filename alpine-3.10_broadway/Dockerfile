FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:719096716aabd3bd7bf7b8fe522b89c6a0c99d7ac423b75bc64160773f6957ab
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
