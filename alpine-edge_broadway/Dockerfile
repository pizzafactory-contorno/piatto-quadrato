FROM docker.io/pizzafactory0contorno/piatto:alpine-edge@sha256:6d491f664d14971226de3d291ae9c8b252f7b30d79d52acdbe791d779cab85fa
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
