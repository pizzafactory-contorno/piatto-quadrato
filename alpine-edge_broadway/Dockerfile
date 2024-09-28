FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:cfa885e87e379bdc39dada7f507e97c2cf382a1c9ea6e3148c9401edc33593a1
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
