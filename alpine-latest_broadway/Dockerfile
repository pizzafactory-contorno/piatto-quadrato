FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:5c208aeb5cb00e268f46fbd1d41e801c44b02c491ba6b6cf782a952ae5975f43
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
