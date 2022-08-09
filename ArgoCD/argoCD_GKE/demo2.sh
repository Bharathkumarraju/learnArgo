bharath_dasaraju@cloudshell:~ (safi-sandbox-tykapigw)$ kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}"| base64 -d && echo
W0621 10:20:37.030574     794 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
zTZ7x4CDTB0T19X9
bharath_dasaraju@cloudshell:~ (safi-sandbox-tykapigw)$

