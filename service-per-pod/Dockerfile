FROM openshift/origin

ENV FILTER       "app=service-per-pod"
ENV TEMPLATE     "route.template"
ENV LABEL_KEY    "app"
ENV LABEL_VALUE  "service-per-pod"
ENV WILDCARD_URL "127.0.0.1.nip.io"

COPY watch-pods.sh   /watch-pods.sh
COPY route.template  /route.template

USER 1001
ENTRYPOINT  ["/watch-pods.sh"]
