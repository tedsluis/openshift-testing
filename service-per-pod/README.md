# side container: service per pod   
   
### Initial build  
```bash
oc new-app https://github.com/tedsluis/openshift-testing.git  --name=service-per-pod --context-dir=service-per-pod
```
  
### New build   
```bash
oc start-build service-per-pod 
```
    
### Get pods
oc get pods --template='{{range .items}}{{if eq .status.phase "Running" }}{{.metadata.name}}|{{end}}{{end}}'
jenkins-1-qc0ck|service-per-pod-14-9gnq2|
