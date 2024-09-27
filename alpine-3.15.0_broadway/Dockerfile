FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:e40f867cdce88c7fe15063afd748e5cf88e529427e9d67b2f791a54ea476e9d5
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
