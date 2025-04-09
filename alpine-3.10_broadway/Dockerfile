FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:c2cbbd358c634a6233305fe1042d7ef7b51a1eafd80d7459b954ee6981a56d8a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
