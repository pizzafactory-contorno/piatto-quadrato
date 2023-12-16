FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:8d3136dbcf8a65902b0581722d096afa112d67b8ac366e9801c4f5ba1913901f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
