FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:075d475813b91ac1a5a5811626c445e164e2b0ba4debacebc87bf0348168ec47
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
