FROM docker.io/pizzafactory0contorno/piatto:alpine-3.15.0@sha256:9c1cd8b0edc54a2ff34a7f3cb6dea25772abd34c952833291ab5cd65ee68ee35
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
