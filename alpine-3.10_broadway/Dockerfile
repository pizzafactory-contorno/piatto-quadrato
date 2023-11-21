FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:c8eaa3ebf30f2668213c3a1a4bad29736657408bf589819bb865f28482e6e7f3
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
