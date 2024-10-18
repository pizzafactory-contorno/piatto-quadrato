FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:88bc938acaccc76069d7452580e86da3905c070a5030ab6325e11f80e2a0e091
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
