FROM curlimages/curl:latest

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh / 

ENTRYPOINT ["docker-entrypoint.sh"]