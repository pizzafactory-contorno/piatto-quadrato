FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:e3e5328119abbd9d82c1152d45ae4d39e762f8db29a03ae82bececf997bc8412
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
