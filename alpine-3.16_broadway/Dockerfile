FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:13a795d198e11343a00af8bfc4d81b77c3417e18a9c73a46ace298f9452ce2e0
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
