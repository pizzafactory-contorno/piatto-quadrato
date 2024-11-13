FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:65598b7b6b4f5c498951f5cab8a75366e904bc2d162a1fe3aeb9b4f88880f1ae
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
