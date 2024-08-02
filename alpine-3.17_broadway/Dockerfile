FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:4af5ee8f37c1af7802aed742301f643854e5a7b5bcbaeef7f39aa5ddb1de258b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
