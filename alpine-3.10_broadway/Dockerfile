FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:a1d110ff9447a93e5a3b289022b14cad93efb05b3f71444ec4d45b125186e521
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
