FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:54b9b613b5414c208a8f402bde09866ae6206b9a44555d3ce2b36a8fb35fde9e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
