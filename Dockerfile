FROM joeelliott/cert-exporter:v2.7.0

USER root

VOLUME [ "/certificates" ]

# The below line is for local testing, can be removed later
# COPY test.pem /certificates/test.pem

# Don't think this actually works?
RUN export NODE_NAME=test

USER app

# This may need/ want replacing with an entrypoint script?
ENTRYPOINT [ "./app", "-include-cert-glob", "/*/*.pem", "-logtostderr" ]
