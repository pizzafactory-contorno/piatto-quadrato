FROM docker.io/pizzafactory0contorno/piatto:alpine-3.10@sha256:86651ed713d8d9974bb96510e7a70e11009df8bafb65cf198995b82e0dfba4fc
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
