FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:9780fb5690d6690ba9b5e73e6d9cba8d1c82e5db370f847387fb008ef75b98c6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
