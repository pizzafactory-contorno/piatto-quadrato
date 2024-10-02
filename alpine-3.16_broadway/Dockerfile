FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:6223653ec71214d575816da8cdfef242203d38111029ff59c8e9927a9d41c8e3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
