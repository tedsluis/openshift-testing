#!/bin/sh

# == Watch Services
oc get pods --watch --template='{{ .metadata.name}}
' |while read line
do
  echo "== Found new broker: " $line
  oc get pods | grep -i running 
  oc get pods | grep -i terminating
done
