FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:1ac01be4b3d0505c44cd1851708cf9d3334f6908812ef1b51dcff7926490f10e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
