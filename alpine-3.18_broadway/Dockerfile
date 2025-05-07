FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:9996f1cea222b71cf9b3436bd18752fb068c19b4d3e8044f9c7f6376a0ab54b7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
