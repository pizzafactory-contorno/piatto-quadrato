FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:65590ed2d5125614f50e67ed844ddb5ce65414ad2a7f559370accf21dba7a3c7
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
