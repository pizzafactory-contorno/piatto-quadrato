FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:b0dc4b04d5d1adebd9b43fb10fe361288df17503fba8ca3fda88e0b3c9407300
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
