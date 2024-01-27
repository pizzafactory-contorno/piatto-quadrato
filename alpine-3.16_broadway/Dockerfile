FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:072b6428da1de15a8a344e888ceb508d22ca8539da205b0f1e55eac0c7e1581f
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
