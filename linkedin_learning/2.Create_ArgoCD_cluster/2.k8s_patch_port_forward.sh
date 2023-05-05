*[main][~/external/learnArgo]$ kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
service/argocd-server patched
*[main][~/external/learnArgo]$


[main][~/external/learnArgo]$ kubectl port-forward svc/argocd-server -n argocd 8080:443
Forwarding from 127.0.0.1:8080 -> 8080
Forwarding from [::1]:8080 -> 8080

*[main][~/external/learnArgo]$ argocd version
argocd: v2.4.0+91aefab.dirty
  BuildDate: 2022-06-13T11:53:07Z
  GitCommit: 91aefabc5b213a258ddcfe04b8e69bb4a2dd2566
  GitTreeState: dirty
  GoVersion: go1.18.3
  Compiler: gc
  Platform: darwin/arm64
argocd-server: v2.4.8+844f79e
*[main][~/external/learnArgo]$


*[main][~/external/learnArgo]$ kubectl port-forward svc/argocd-server -n argocd 8080:443
Forwarding from 127.0.0.1:8080 -> 8080
Forwarding from [::1]:8080 -> 8080
Handling connection for 8080
Handling connection for 8080


*[main][~/external/learnArgo/linkedin_learning/1.Create_k3d_cluster]$ kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo
b3Wq1gHCwCgTE0OX
*[main][~/external/learnArgo/linkedin_learning/1.Create_k3d_cluster]$
