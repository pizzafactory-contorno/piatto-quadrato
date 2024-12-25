FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:aec59c5e0d7a0fd181414dbbbc9db89f567abd1b50d6899752c130f6c8d946c2
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
