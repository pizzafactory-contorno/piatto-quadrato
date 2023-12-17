FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:68c442897a35e2b0054d97f2f9651c7e044f6f1441e16b69f0340051fb39e8dd
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
