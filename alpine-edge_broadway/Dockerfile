FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:50ade7610e84d3699b2a6df9f5ba7fd545407ee009d798e353937c237f31ab0d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
