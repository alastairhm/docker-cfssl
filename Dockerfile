FROM alpine:latest 

RUN apk add --no-cache openssh git go bash make && \
    adduser -D -g "go" -s /bin/sh go && \
    mkdir -p /home/go/workdir /home/go/.ssh && \
    chown go:go /home/go/workdir /home/go/.ssh && \
    su - go -c "git clone --depth 1 https://github.com/cloudflare/cfssl.git" && \
    su - go -c "cd cfssl && make " && \
    cp /home/go/cfssl/bin/* /bin && \
    rm -rf /home/go/cfssl
USER go
WORKDIR /home/go/workdir

ENTRYPOINT ["/bin/cfssl"]
