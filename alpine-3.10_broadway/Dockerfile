FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:c58e83a1d63b86a74de1d5f2dedda17889761f67749c514aaa1ef981d0a7c42a
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
