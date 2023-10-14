FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:94b7563b0e595f84891bea749f05f671db0460b0f999f0d59b3cad08bb250dda
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
