FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:f84e4df9f26db69e3fba25ce4e5fbfd593e77ec07cc16d5b879e30edd4ad6b2b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
