FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:37aa352a3138d0452f6bcf961be550f65fe4d41bb4f07073ecaf17c182944c02
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
