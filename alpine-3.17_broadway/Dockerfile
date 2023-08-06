FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:d5435cfc084a4349a8e5fe6503cf640d77b057a579aa528373fb52d1f6cecc3d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
