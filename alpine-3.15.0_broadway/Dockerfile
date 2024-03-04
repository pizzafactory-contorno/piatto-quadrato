FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:6799db23e83033f9710269714ac09bc5116126ff7db4533dea7cadd0f9598ceb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
