bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %  kubectl apply -n argocd -f  https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
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
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl get deploy -n argocd
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-redis                       1/1     1            1           93s
argocd-applicationset-controller   1/1     1            1           94s
argocd-notifications-controller    1/1     1            1           94s
argocd-server                      1/1     1            1           93s
argocd-dex-server                  1/1     1            1           94s
argocd-repo-server                 1/1     1            1           93s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl get svc -n argocd
NAME                                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
argocd-applicationset-controller          ClusterIP   10.43.214.164   <none>        7000/TCP,8080/TCP            100s
argocd-dex-server                         ClusterIP   10.43.250.229   <none>        5556/TCP,5557/TCP,5558/TCP   100s
argocd-metrics                            ClusterIP   10.43.219.109   <none>        8082/TCP                     100s
argocd-notifications-controller-metrics   ClusterIP   10.43.22.108    <none>        9001/TCP                     100s
argocd-redis                              ClusterIP   10.43.44.94     <none>        6379/TCP                     100s
argocd-repo-server                        ClusterIP   10.43.214.146   <none>        8081/TCP,8084/TCP            100s
argocd-server                             ClusterIP   10.43.65.28     <none>        80/TCP,443/TCP               100s
argocd-server-metrics                     ClusterIP   10.43.14.15     <none>        8083/TCP                     100s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl get statefulset -n argocd
NAME                            READY   AGE
argocd-application-controller   1/1     2m54s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl get application  -n argocd
No resources found in argocd namespace.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %

