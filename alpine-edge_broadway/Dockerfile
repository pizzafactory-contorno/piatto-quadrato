FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:a6efc54467ec361f3269f68caaa859fb282c040a1911ec919e270f69a73fc69a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
