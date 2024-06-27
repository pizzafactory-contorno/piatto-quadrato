FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:e671c2421fa5d1301aafed5739717cd272c470ba6d14ba459bd800c5308484a6
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
