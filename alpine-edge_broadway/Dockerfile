FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:a1a06b12874aeb8a397447afd26a8a6a5393761f0e48d920f6eedac77564f402
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
