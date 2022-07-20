FROM alpine:latest

RUN apk update && apk add tor

USER tor

VOLUME ["/etc/tor", "/var/lib/tor"]

ENTRYPOINT ["tor"]

CMD ["-f", "/etc/tor/torrc"]
