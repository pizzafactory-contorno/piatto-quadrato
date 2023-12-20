FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:e739d95e6b1108dd86d028d038b09ded726f2a8b5519e4d483d87af70ebe2ca5
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
