FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:de6d32738cfd61bd746a3e041deacbc4d2d79f5005ed9aa3de65fbb813e6f0e1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
