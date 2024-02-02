FROM docker.io/pizzafactory0contorno/piatto:alpine-3.18@sha256:7393a75bb221cfbf6e36c2f9a3a884942df2e61a036a30416c1478a927d70e32
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
