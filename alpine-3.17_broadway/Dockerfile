FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:a6c2af96312b65a69d75c7587768cab8c9baa81e86c6708eb8c4fc511a99e36b
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
