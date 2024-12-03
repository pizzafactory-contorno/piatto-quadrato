FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:bad060f51eb6d67ef2873dacc7865a426cf19922dde6bf3bc5d3ae19134caeb9
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
