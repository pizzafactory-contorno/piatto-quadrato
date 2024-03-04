FROM docker.io/pizzafactory0contorno/piatto:alpine-3.16@sha256:da5d2ea4abc5c6c3f8f7f1f8b0884a1c65a37d9ba121fd57edb1cc56bfac5041
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
