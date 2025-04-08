FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:25ad49bc0d95f016e7d56b76c7c918bcbeae6c9a2f3c1d6380e3a0d5013f12b7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
