FROM alpine

RUN apk update
RUN apk add openssh
RUN apk add scp
RUN apk add curl
RUN curl -L https://github.com/cloudflare/cloudflared/releases/download/2024.3.0/cloudflared-linux-amd64 -o /usr/bin/cloudflared
RUN chmod +x /usr/bin/cloudflared
RUN mkdir /root/.ssh

COPY command.sh /command.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/command.sh"]