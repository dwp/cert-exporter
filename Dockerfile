FROM joeelliott/cert-exporter:v2.7.0

USER root

VOLUME [ "/certificates" ]

ENTRYPOINT [ "./app", "-include-cert-glob", "/*/*.pem", "-logtostderr", "-polling-period", "0h10m0s" ]
