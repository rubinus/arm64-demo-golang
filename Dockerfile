FROM rubinus/centos7-arm64:latest

RUN yum install -y gcc
 
# install golang
RUN yum install -y go

ENV GOROOT /usr/lib/golang
ENV PATH=$PATH:/usr/lib/golang/bin
 
# config GOPATH
RUN mkdir -p /root/go
RUN mkdir -p /root/go/src
RUN mkdir -p /root/go/pkg
RUN mkdir -p /root/go/bin
ENV GOPATH /root/go

RUN mkdir -p /root/go/src/server
COPY * /root/go/src/server/

WORKDIR /root/go/src/server
RUN go build -o server main.go

	
# startup the server
CMD /root/go/src/server/server