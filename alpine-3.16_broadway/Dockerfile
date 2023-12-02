FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:a53fc69f52031e30c2fb9bbaa60d09036c2cdf5e2c23c3ce08e6bb039489f3b6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
