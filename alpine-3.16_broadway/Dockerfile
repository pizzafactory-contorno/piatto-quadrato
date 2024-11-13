FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:fc697be5b5a0a1d535c5ff243efa9bff2b382bfa178c31ebd06ffa6950abb380
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
