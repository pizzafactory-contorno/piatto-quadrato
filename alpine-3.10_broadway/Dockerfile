FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:cd0fbad6d8fcd7122129e52ad2b38407d66654f72ffbdc2b0fd07cadc1e3780f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
