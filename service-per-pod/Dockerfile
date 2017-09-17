FROM openshift/origin

CMD oc login -u pod-watcher

COPY watch-pods.sh /watch-pods.sh

USER 1001
ENTRYPOINT  ["/watch-pods.sh"]

