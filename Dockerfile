FROM p31arm64v8/origin-release:golang-1.10

RUN mkdir -p /root/go/src/server
COPY * /root/go/src/server/

WORKDIR /root/go/src/server
RUN go build -o server main.go

	
# startup the server
CMD /root/go/src/server/server