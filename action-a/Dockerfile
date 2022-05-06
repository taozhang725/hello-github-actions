FROM debian:9.5-slim

ADD entrypoint.sh /entrypoint.sh
ADD addfile /addfile
RUN chmod +x /entrypoint.sh
RUN chmod +x /addfile
ENTRYPOINT ["/entrypoint.sh"]
