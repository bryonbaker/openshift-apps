# Overview

This repo is a "meta-repo" that contains a number of different applications that are managed by the OpenShift GitOps Operator.

Before you can create applications you need to give edit access. For least privilage do this for each namespace you want to deploy apps into:
```
oc create rolebinding argocd-application-controller-edit \
  --clusterrole=edit \
  --serviceaccount=openshift-gitops:openshift-gitops-argocd-application-controller \
  -n <namespace>
```

Refer to the individual README files within each application.
