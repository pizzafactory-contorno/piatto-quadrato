FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:590935b638e92235172d476bdde19cb0ac3c0d667e2ddb88bd2628bc8a4b1501
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
