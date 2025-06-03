FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:92c3b465a5b694a047920746ddaeeba803e754e1c2fcd9c52ff97c4a2e348a5a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
