FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:5166a7465960ca0c5665b455cad3929b0e42d2158077c5fb02fa9f172dbd6e7f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
