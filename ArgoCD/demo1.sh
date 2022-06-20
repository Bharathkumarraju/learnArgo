bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl create namespace argocd
namespace/argocd created
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 

https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl create namespace argocd
namespace/argocd created
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml 
customresourcedefinition.apiextensions.k8s.io/applications.argoproj.io created
customresourcedefinition.apiextensions.k8s.io/applicationsets.argoproj.io created
customresourcedefinition.apiextensions.k8s.io/appprojects.argoproj.io created
serviceaccount/argocd-application-controller created
serviceaccount/argocd-applicationset-controller created
serviceaccount/argocd-dex-server created
serviceaccount/argocd-notifications-controller created
serviceaccount/argocd-redis created
serviceaccount/argocd-repo-server created
serviceaccount/argocd-server created
role.rbac.authorization.k8s.io/argocd-application-controller created
role.rbac.authorization.k8s.io/argocd-applicationset-controller created
role.rbac.authorization.k8s.io/argocd-dex-server created
role.rbac.authorization.k8s.io/argocd-notifications-controller created
role.rbac.authorization.k8s.io/argocd-server created
clusterrole.rbac.authorization.k8s.io/argocd-application-controller created
clusterrole.rbac.authorization.k8s.io/argocd-server created
rolebinding.rbac.authorization.k8s.io/argocd-application-controller created
rolebinding.rbac.authorization.k8s.io/argocd-applicationset-controller created
rolebinding.rbac.authorization.k8s.io/argocd-dex-server created
rolebinding.rbac.authorization.k8s.io/argocd-notifications-controller created
rolebinding.rbac.authorization.k8s.io/argocd-redis created
rolebinding.rbac.authorization.k8s.io/argocd-server created
clusterrolebinding.rbac.authorization.k8s.io/argocd-application-controller created
clusterrolebinding.rbac.authorization.k8s.io/argocd-server created
configmap/argocd-cm created
configmap/argocd-cmd-params-cm created
configmap/argocd-gpg-keys-cm created
configmap/argocd-notifications-cm created
configmap/argocd-rbac-cm created
configmap/argocd-ssh-known-hosts-cm created
configmap/argocd-tls-certs-cm created
secret/argocd-notifications-secret created
secret/argocd-secret created
service/argocd-applicationset-controller created
service/argocd-dex-server created
service/argocd-metrics created
service/argocd-notifications-controller-metrics created
service/argocd-redis created
service/argocd-repo-server created
service/argocd-server created
service/argocd-server-metrics created
deployment.apps/argocd-applicationset-controller created
deployment.apps/argocd-dex-server created
deployment.apps/argocd-notifications-controller created
deployment.apps/argocd-redis created
deployment.apps/argocd-repo-server created
deployment.apps/argocd-server created
statefulset.apps/argocd-application-controller created
networkpolicy.networking.k8s.io/argocd-application-controller-network-policy created
networkpolicy.networking.k8s.io/argocd-dex-server-network-policy created
networkpolicy.networking.k8s.io/argocd-redis-network-policy created
networkpolicy.networking.k8s.io/argocd-repo-server-network-policy created
networkpolicy.networking.k8s.io/argocd-server-network-policy created
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get deploy -n argocd
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-redis                       1/1     1            1           75s
argocd-notifications-controller    1/1     1            1           75s
argocd-server                      1/1     1            1           74s
argocd-dex-server                  1/1     1            1           75s
argocd-applicationset-controller   1/1     1            1           75s
argocd-repo-server                 1/1     1            1           75s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get svc -n argocd
NAME                                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
argocd-applicationset-controller          ClusterIP   10.43.13.163    <none>        7000/TCP,8080/TCP            116s
argocd-dex-server                         ClusterIP   10.43.105.204   <none>        5556/TCP,5557/TCP,5558/TCP   116s
argocd-metrics                            ClusterIP   10.43.126.10    <none>        8082/TCP                     116s
argocd-notifications-controller-metrics   ClusterIP   10.43.30.103    <none>        9001/TCP                     116s
argocd-redis                              ClusterIP   10.43.75.146    <none>        6379/TCP                     116s
argocd-repo-server                        ClusterIP   10.43.143.247   <none>        8081/TCP,8084/TCP            116s
argocd-server                             ClusterIP   10.43.3.157     <none>        80/TCP,443/TCP               116s
argocd-server-metrics                     ClusterIP   10.43.91.35     <none>        8083/TCP                     116s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get statefulset -n argocd
NAME                            READY   AGE
argocd-application-controller   1/1     2m33s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % argocd version
argocd: v2.4.0+91aefab.dirty
  BuildDate: 2022-06-13T11:53:07Z
  GitCommit: 91aefabc5b213a258ddcfe04b8e69bb4a2dd2566
  GitTreeState: dirty
  GoVersion: go1.18.3
  Compiler: gc
  Platform: darwin/arm64
FATA[0000] Argo CD server address unspecified           
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % argocd version --client
argocd: v2.4.0+91aefab.dirty
  BuildDate: 2022-06-13T11:53:07Z
  GitCommit: 91aefabc5b213a258ddcfe04b8e69bb4a2dd2566
  GitTreeState: dirty
  GoVersion: go1.18.3
  Compiler: gc
  Platform: darwin/arm64
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 

