FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:4fc4471804d43efdba05dcf7902cbb1f7198359fea61c7a75f4b795394ccc791
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
