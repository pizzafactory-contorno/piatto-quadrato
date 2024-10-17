FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:d4e94245c83ae6de49b4a227b404e9945a5b3bee68797366612f8448c330114b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
