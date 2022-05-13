FROM debian:9.5-slim

RUN apt-get -y update
RUN apt-get -y install git

ADD entrypoint.sh /entrypoint.sh
ADD addfile /addfile
RUN chmod +x /entrypoint.sh
RUN chmod +x /addfile
ENTRYPOINT ["/entrypoint.sh"]
