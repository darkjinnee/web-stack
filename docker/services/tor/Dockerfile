FROM ubuntu:latest

LABEL maintainer="Dark Jinnee <darkjinnee@gmail.com>"

RUN apt update && apt upgrade -y && apt install -y tor
RUN echo 'SOCKSPort 0.0.0.0:9050' > /etc/tor/torrc

CMD ["/usr/bin/tor"]
