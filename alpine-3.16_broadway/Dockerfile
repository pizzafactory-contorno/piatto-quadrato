FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:7edd3d7f2692093e3621076ee8a3d729f0ad57e26ca72b00097197b773b83e79
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
