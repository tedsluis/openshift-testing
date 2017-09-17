FROM openshift/origin

CMD oc login -u pod-watcher

COPY watch-pod.sh /watch-pod.sh

USER 1001
ENTRYPOINT  ["/watch.sh"]

