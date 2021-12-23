FROM alpine:3.11
RUN apk update && apk upgrade && apk add --no-cache dcron && apk add --no-cache git
ADD ./ ./autocommit/
