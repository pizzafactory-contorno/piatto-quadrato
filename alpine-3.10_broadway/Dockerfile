FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:05a59732ad23d4aafe2a5980cfcee397d7819f3e89dbb5f8d4cd14e7f030f1aa
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
