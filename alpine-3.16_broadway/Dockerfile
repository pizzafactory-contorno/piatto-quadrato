FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:7df0a8e512e50abd7aa2a695077dc089a22872a6963dd9682228c6cff6b21d63
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
