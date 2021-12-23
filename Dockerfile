FROM alpine
RUN apk update && apk upgrade && apk add --no-cache dcron && apk add --no-cache git && apk add git openssh
RUN set -x && apk add --no-cache   dcron && echo '* * * * * /autocommit/autocommit.sh' > /etc/crontabs/root