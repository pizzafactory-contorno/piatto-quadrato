FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:29345822b3626e1a08e2efdd97432f0a411cf1598e7297553eae29d8b108a7c1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
