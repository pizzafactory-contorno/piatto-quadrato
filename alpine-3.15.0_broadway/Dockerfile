FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:5578de66b5790e9a95762d5b5964c26e48d5cf169ceaccfe7e097bcfd257fef2
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
