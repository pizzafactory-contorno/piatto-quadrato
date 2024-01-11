FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:c37d9d7fe29192dd6d00f0cf1ada6a6191c65ed24d948438fe7b857f512a7dd7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
