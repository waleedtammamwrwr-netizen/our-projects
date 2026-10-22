# Railway: serve the presentation as a static site on the port Railway assigns.
FROM caddy:2.8-alpine
COPY index.html /srv/index.html
CMD caddy file-server --root /srv --listen :${PORT:-8080}