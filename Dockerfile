FROM ghcr.io/gohugoio/hugo:v0.156.0

# The source files are copied to /site
COPY . /site

WORKDIR /site

USER root
RUN chown -R nobody:nobody /site
USER nobody

# And then we just run Hugo
RUN hugo build
