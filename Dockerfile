FROM alpine:3

ENV USER aws-user

RUN apk add -U bash

ADD https://github.com/99designs/aws-vault/releases/download/v6.2.0/aws-vault-linux-amd64 /usr/bin/aws-vault
RUN chmod +x /usr/bin/aws-vault
COPY entrypoint.sh /entrypoint.sh

RUN adduser -h /home/${USER} -D -u 1000 ${USER}
USER ${USER}

# CMD ["/usr/bin/aws-vault"]
ENTRYPOINT [ "/entrypoint.sh" ]
