FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:af2bf54f9825b86bd8f2e34f3762662dcc8f75cdbe28eb23fde2c32383c23433
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
