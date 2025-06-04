FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:15432ecbf4750942f3c687c337d3a25c92c35db9bb3109af5821231d6a75e842
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
