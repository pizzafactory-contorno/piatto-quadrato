FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:485e077fea125d0881ab95226589b924728bd8d20d06238e1d8f5cbaadf857a2
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
