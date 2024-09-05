FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:b539b5599c11db38186cbe3ec567b7b4e5e5b931f8d8b844c9562465e56acd24
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
