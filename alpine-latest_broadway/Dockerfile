FROM docker.io/pizzafactory0contorno/piatto:alpine-latest@sha256:69f1902cc498c7d676ab9f125f62069d117b7ee3b8a7210a397d18ea14dc862e
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
