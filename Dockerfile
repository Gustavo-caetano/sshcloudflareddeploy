FROM gustavocaetano/cloudflaredssh:1.0

COPY command.sh /command.sh
RUN chmod +x /command.sh

ENTRYPOINT ["/command.sh"]