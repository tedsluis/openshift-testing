#!/bin/bash
oc export buildconfig service-per-pod > buildconfig/service-per-pod.yaml
oc export imagestream service-per-pod > imagestream/service-per-pod.yaml
oc export imagestream origin > imagestream/origin.yaml
oc export deploymentconfig service-per-pod > deploymentconfig/service-per-pod.yaml
git add buildconfig/service-per-pod.yaml
git add imagestream/service-per-pod.yaml
git add imagestream/origin.yaml
git add deploymentconfig/service-per-pod.yaml
git commit -m "Backup buildconfig, imagestreams and deployconfig."
git push
