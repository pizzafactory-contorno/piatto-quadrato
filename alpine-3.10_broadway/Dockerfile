FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:70bba8fbeab2b4c4c54d3fd4d2cd59b662a3bdce84430de72e93b4f35047c48d
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
