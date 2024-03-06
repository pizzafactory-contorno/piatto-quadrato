FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:c964626a66979de541d08bd8e79518d86f6f8a6add9e98f4e4a1cf534b345641
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
