FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:48ef3a9f0d609db8252c3d0c4cfc9b8da275a597494cd1575a117018b20f1bcc
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
