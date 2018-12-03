FROM ruby:alpine
MAINTAINER Temafey

RUN gem install redis && \
	apk add --no-cache curl && \
	curl http://download.redis.io/redis-stable/src/redis-trib.rb -s -o /redis-trib.rb && \
	chmod +x /redis-trib.rb && \
	apk del curl

ENTRYPOINT ["/redis-trib.rb"]
