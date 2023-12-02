FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:15a0e9cd9500d22d8f2b3220623da9db979c416acf5b4694f8cc816f44c07b9f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
