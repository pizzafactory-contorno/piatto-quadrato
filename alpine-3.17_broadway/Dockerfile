FROM docker.io/pizzafactory0contorno/piatto:alpine-3.17@sha256:0eec9960747b000641ef9252dd28eecfdc0046213a5f0b273270b85caba4e547
LABEL maintainer="Masaki Muranaka <monaka@monami-ya.com>"

USER root
RUN apk add --no-cache gtk+3.0
COPY ./start-broadwayd.sh /start-broadwayd.sh
USER user

ENV GDK_BACKEND=broadway \
    BROADWAY_ADDRESS="0.0.0.0" \
    BROADWAY_DISPLAY=":0"

CMD [ "/start-broadwayd.sh" ]
