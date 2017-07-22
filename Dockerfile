FROM  golang:1.7

COPY . /go/src/github.com/bbourbie/splunk-log-driver

#We are trying to compile statically but actually we are failing miserably because of our GO package dependencies 
RUN cd /go/src/github.com/bbourbie/splunk-log-driver && go get && go build --ldflags '-extldflags "-static"' -o /usr/bin/splunk-log-driver
	