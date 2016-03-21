FROM alpine:3.3
RUN apk --update add bash python py-pip groff less &&\
	rm -rf /var/cache/apk*
RUN pip install awscli
ENTRYPOINT ["aws"]
