FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:f7df8e5902b81096e327a93a4921eeb96bc2b09e399409b54c9180447ad91ede
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
