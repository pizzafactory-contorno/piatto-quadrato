FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:e5b63758a1398f95030aac417453e9a78809798e0b6a02b810fb587b3aba90c9
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
