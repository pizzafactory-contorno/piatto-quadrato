FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:b78d35b1684242784cdda9050f08dcd686049fecf5319aeedf915682099bb0ce
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
