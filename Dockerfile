FROM golang:alpine as builder

RUN apk add --no-cache openssh git make
RUN git clone --depth 1 https://github.com/cloudflare/cfssl.git
RUN cd cfssl && make 

FROM alpine:latest
COPY --from=builder /go/cfssl/bin/* /bin/
RUN mkdir -p /home/go/workdir                                    
WORKDIR /home/go/workdir
ENTRYPOINT ["/bin/cfssl"]
