FROM openshift/origin

COPY watch-pods.sh /watch-pods.sh

USER 1001
ENTRYPOINT  ["/watch-pods.sh"]
