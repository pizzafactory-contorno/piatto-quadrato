FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:baa9441ae887b82f3ee0d451e963c433a594a0cde60b8c75b6ddde778260df4f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
