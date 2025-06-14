FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:0d8120696f3bf3a1224dbdc28a1633b76bc8bce7cf719dcdfe7d60bfecf8617e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
