FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:f7d11bcf12733de682c79efbd6517a2fbba6529b1da3090ce57c49a91322296b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
