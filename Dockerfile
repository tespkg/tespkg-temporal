FROM alpine:3
RUN apk add --update curl \
    && rm -rf /var/cache/apk/* \
    && curl -L 'https://temporal.download/cli/archive/latest?platform=linux&arch=amd64' | tar xvz
CMD ["/temporal", "server", "start-dev", "--ip=0.0.0.0"]
EXPOSE 7233 8233
