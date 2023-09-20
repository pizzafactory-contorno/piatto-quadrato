FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:7c8b3d8ffef241fc037d1a56bb1d1a04c8aad4a51c6509b712b77939c0a4c95d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
