FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:a666bb7a53adca8caa0719f2049f1986a2a159d56d089bcc6b1ba08a0cb2e52a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
