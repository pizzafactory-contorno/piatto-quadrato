FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:872a09b109421f03cc6d298497abe973ec41b4e8f223b6b1c6a0bf2304f9e6b0
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
