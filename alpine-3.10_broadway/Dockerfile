FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:5676ce317a72747590a2e2f46d16db27ce41344f51bd976e9032e5c72945e1b5
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
