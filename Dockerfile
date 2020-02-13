FROM golang:1.13.7
 
WORKDIR /go/src/app

ENV GO111MODULE=on
ENV GOPATH /go
 
RUN apt-get update \
    && apt-get install -y git \
    && go get -v \
        gopkg.in/urfave/cli.v2@master \
        github.com/oxequa/realize \
        github.com/go-delve/delve/cmd/dlv@latest \
        github.com/rogpeppe/godef@latest \
        golang.org/x/tools/gopls@latest \
        golang.org/x/tools/cmd/goimports@latest \
        github.com/ramya-rao-a/go-outline@latest  \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
