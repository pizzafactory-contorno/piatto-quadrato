FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:c18eaaf05f477b123b28c9a0bee17a6721c60200809ca4759131740d467f27a6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
