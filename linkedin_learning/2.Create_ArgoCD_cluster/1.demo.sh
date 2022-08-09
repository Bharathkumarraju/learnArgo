[~/external/test_confluent_cloud]$ kubectl create namespace argocd
namespace/argocd created
[~/external/test_confluent_cloud]$



[~/external/test_confluent_cloud]$  kubectl apply -n argocd -f  https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
customresourcedefinition.apiextensions.k8s.io/applications.argoproj.io unchanged
customresourcedefinition.apiextensions.k8s.io/applicationsets.argoproj.io unchanged
customresourcedefinition.apiextensions.k8s.io/appprojects.argoproj.io unchanged
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
clusterrole.rbac.authorization.k8s.io/argocd-application-controller unchanged
clusterrole.rbac.authorization.k8s.io/argocd-server unchanged
rolebinding.rbac.authorization.k8s.io/argocd-application-controller created
rolebinding.rbac.authorization.k8s.io/argocd-applicationset-controller created
rolebinding.rbac.authorization.k8s.io/argocd-dex-server created
rolebinding.rbac.authorization.k8s.io/argocd-notifications-controller created
rolebinding.rbac.authorization.k8s.io/argocd-redis created
rolebinding.rbac.authorization.k8s.io/argocd-server created
clusterrolebinding.rbac.authorization.k8s.io/argocd-application-controller unchanged
clusterrolebinding.rbac.authorization.k8s.io/argocd-server unchanged
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
[~/external/test_confluent_cloud]$



[~/external/test_confluent_cloud]$ kubectl get deploy -n argocd
NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
argocd-dex-server                  0/1     1            0           2m2s
argocd-notifications-controller    0/1     1            0           2m2s
argocd-applicationset-controller   0/1     1            0           2m2s
argocd-redis                       0/1     1            0           2m2s
argocd-server                      0/1     1            0           2m
argocd-repo-server                 0/1     1            0           2m1s
[~/external/test_confluent_cloud]$ kubectl get svc -n argocd
NAME                                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
argocd-applicationset-controller          ClusterIP   10.43.131.35    <none>        7000/TCP,8080/TCP            2m14s
argocd-dex-server                         ClusterIP   10.43.111.18    <none>        5556/TCP,5557/TCP,5558/TCP   2m14s
argocd-metrics                            ClusterIP   10.43.32.164    <none>        8082/TCP                     2m14s
argocd-notifications-controller-metrics   ClusterIP   10.43.235.127   <none>        9001/TCP                     2m14s
argocd-redis                              ClusterIP   10.43.228.170   <none>        6379/TCP                     2m13s
argocd-repo-server                        ClusterIP   10.43.148.64    <none>        8081/TCP,8084/TCP            2m13s
argocd-server                             ClusterIP   10.43.123.122   <none>        80/TCP,443/TCP               2m13s
argocd-server-metrics                     ClusterIP   10.43.158.152   <none>        8083/TCP                     2m12s
[~/external/test_confluent_cloud]$



*[main][~/external/learnArgo/linkedin_learning/1.Create_k3d_cluster]$ kubectl get svc -n argocd
NAME                                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
argocd-applicationset-controller          ClusterIP   10.43.185.69    <none>        7000/TCP,8080/TCP            17m
argocd-dex-server                         ClusterIP   10.43.173.54    <none>        5556/TCP,5557/TCP,5558/TCP   17m
argocd-metrics                            ClusterIP   10.43.91.137    <none>        8082/TCP                     17m
argocd-notifications-controller-metrics   ClusterIP   10.43.199.94    <none>        9001/TCP                     17m
argocd-redis                              ClusterIP   10.43.148.232   <none>        6379/TCP                     17m
argocd-repo-server                        ClusterIP   10.43.75.104    <none>        8081/TCP,8084/TCP            17m
argocd-server                             ClusterIP   10.43.204.231   <none>        80/TCP,443/TCP               17m
argocd-server-metrics                     ClusterIP   10.43.86.68     <none>        8083/TCP                     17m
*[main][~/external/learnArgo/linkedin_learning/1.Create_k3d_cluster]$ kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
service/argocd-server patched
*[main][~/external/learnArgo/linkedin_learning/1.Create_k3d_cluster]$ kubectl get svc -n argocd
NAME                                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
argocd-applicationset-controller          ClusterIP   10.43.185.69    <none>        7000/TCP,8080/TCP            18m
argocd-dex-server                         ClusterIP   10.43.173.54    <none>        5556/TCP,5557/TCP,5558/TCP   18m
argocd-metrics                            ClusterIP   10.43.91.137    <none>        8082/TCP                     18m
argocd-notifications-controller-metrics   ClusterIP   10.43.199.94    <none>        9001/TCP                     18m
argocd-redis                              ClusterIP   10.43.148.232   <none>        6379/TCP                     18m
argocd-repo-server                        ClusterIP   10.43.75.104    <none>        8081/TCP,8084/TCP            18m
argocd-server-metrics                     ClusterIP   10.43.86.68     <none>        8083/TCP                     18m
argocd-server                             NodePort    10.43.204.231   <none>        80:30187/TCP,443:31061/TCP   18m
*[main][~/external/learnArgo/linkedin_learning/1.Create_k3d_cluster]$



