FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:2e41aad2c428401a26b9732b2b3a5adef5e817ad0358dc4cb1a29c3fef19bb12
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
