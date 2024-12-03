FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:8a6aa6c29ebeddfe774ed6b82a3d69900e3d46e37180cd1cdaca05711d7bea11
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
