FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:bc53d40f965f089c535a36dd50fb67e73f2a4098317212d6c5d318babfbe8f4e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
