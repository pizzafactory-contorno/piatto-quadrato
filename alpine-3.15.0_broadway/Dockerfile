FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:abc1ac7b45ae1e145649ed96eacb4409767c49c2e8cb1f16bbe33d0cb3727867
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
