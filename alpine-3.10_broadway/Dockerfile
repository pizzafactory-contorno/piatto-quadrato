FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:504e4b2405aa7d4dff48b796103f88811a85e307a73d199433cc1ff408144cb7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
