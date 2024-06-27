FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:a51fc9d63dd436db3361d6a6af6f41a00bd7c0f8cfd7bc21a916274efe6a9fcb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
