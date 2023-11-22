FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:21ed10001d57c0c3b160ac6e01fdffaf60aabcf7a289e4dcbd4fbe23511bfbdb
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
