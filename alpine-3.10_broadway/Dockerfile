FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:168f1ad14eceb4d66da9fc4f1ec10ba4abb8e95c3f504085caf3eb784ba88827
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
