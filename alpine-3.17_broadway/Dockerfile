FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:b20715efa7ad41e5ac40b08d38327f2145d685766d864bb798ed9f4b233720e4
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
