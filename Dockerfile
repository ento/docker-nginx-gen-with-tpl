FROM jwilder/docker-gen

COPY nginx.tmpl /etc/docker-gen/templates/nginx.tmpl
COPY entrypoint.sh /opt/

ENTRYPOINT ["/opt/entrypoint.sh"]
