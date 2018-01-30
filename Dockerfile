FROM fedora:latest

RUN dnf -y update
RUN dnf install -y vips-devel

RUN dnf install -y gcc git
RUN curl https://dl.google.com/go/go1.9.3.linux-amd64.tar.gz -o go.tar.gz
RUN tar -C /usr/local -xzf go.tar.gz
RUN rm -f go.tar.gz
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

COPY go-wrapper /usr/local/bin/
RUN go get -u github.com/davidbyttow/govips


# build with: docker build -t vag .
# start with: docker run --rm -it -v /home/chr/projects/go:/go vag bash
