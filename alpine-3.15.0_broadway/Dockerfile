FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:66058bd483af62013ecd710a4509ed80bda6c5f4bad1ad8f2fe0b5ff69c8ddbc
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
