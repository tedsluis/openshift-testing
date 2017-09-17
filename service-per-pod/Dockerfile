FROM openshift/origin

ENV FILTER   "app=service-per-pod"
ENV TEMPLATE "route.template"

COPY watch-pods.sh   /watch-pods.sh
COPY route.template  /route.template

USER 1001
ENTRYPOINT  ["/watch-pods.sh"]
