FROM alpine

RUN apk add --no-cache \
	-X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
	wireguard-tools

COPY --from=gcr.io/google_containers/pause-amd64:3.0 /pause /pause

CMD ["/start.sh"]
