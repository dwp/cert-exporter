FROM joeelliott/cert-exporter:v2.7.0

USER root

VOLUME [ "/certificates" ]

# Don't think this actually works?
RUN export NODE_NAME=test

# This may need/ want replacing with an entrypoint script?
ENTRYPOINT [ "./app", "-include-cert-glob", "/*/*.pem", "-logtostderr" ]
