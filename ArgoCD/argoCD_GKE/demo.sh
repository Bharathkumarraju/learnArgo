bharath_dasaraju@cloudshell:~ (safi-sandbox-tykapigw)$ kubectl get all -n argocd
W0621 10:04:14.880916     757 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
NAME                                                    READY   STATUS     RESTARTS   AGE
pod/argocd-application-controller-0                     1/1     Running    0          52s
pod/argocd-applicationset-controller-5f7d8fffb7-mk4lw   1/1     Running    0          53s
pod/argocd-dex-server-75f7cff9cd-m75zj                  0/1     Init:0/1   0          53s
pod/argocd-notifications-controller-69bf646f87-mgzrd    1/1     Running    0          53s
pod/argocd-redis-55d64cd8bf-dkd6j                       1/1     Running    0          53s
pod/argocd-repo-server-8699756b5d-t8th6                 1/1     Running    0          53s
pod/argocd-server-6dd9cd7964-h8k9t                      1/1     Running    0          53s

NAME                                              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
service/argocd-applicationset-controller          ClusterIP   172.106.0.231   <none>        7000/TCP,8080/TCP            54s
service/argocd-dex-server                         ClusterIP   172.106.1.75    <none>        5556/TCP,5557/TCP,5558/TCP   54s
service/argocd-metrics                            ClusterIP   172.106.2.83    <none>        8082/TCP                     54s
service/argocd-notifications-controller-metrics   ClusterIP   172.106.0.235   <none>        9001/TCP                     54s
service/argocd-redis                              ClusterIP   172.106.0.114   <none>        6379/TCP                     54s
service/argocd-repo-server                        ClusterIP   172.106.0.69    <none>        8081/TCP,8084/TCP            54s
service/argocd-server                             ClusterIP   172.106.0.65    <none>        80/TCP,443/TCP               54s
service/argocd-server-metrics                     ClusterIP   172.106.0.240   <none>        8083/TCP                     53s

NAME                                               READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/argocd-applicationset-controller   1/1     1            1           53s
deployment.apps/argocd-dex-server                  0/1     1            0           53s
deployment.apps/argocd-notifications-controller    1/1     1            1           53s
deployment.apps/argocd-redis                       1/1     1            1           53s
deployment.apps/argocd-repo-server                 1/1     1            1           53s
deployment.apps/argocd-server                      1/1     1            1           53s

NAME                                                          DESIRED   CURRENT   READY   AGE
replicaset.apps/argocd-applicationset-controller-5f7d8fffb7   1         1         1       53s
replicaset.apps/argocd-dex-server-75f7cff9cd                  1         1         0       53s
replicaset.apps/argocd-notifications-controller-69bf646f87    1         1         1       53s
replicaset.apps/argocd-redis-55d64cd8bf                       1         1         1       53s
replicaset.apps/argocd-repo-server-8699756b5d                 1         1         1       53s
replicaset.apps/argocd-server-6dd9cd7964                      1         1         1       53s

NAME                                             READY   AGE
statefulset.apps/argocd-application-controller   1/1     53s
bharath_dasaraju@cloudshell:~ (safi-sandbox-tykapigw)$ kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
W0621 10:15:36.167855     773 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
service/argocd-server patched
bharath_dasaraju@cloudshell:~ (safi-sandbox-tykapigw)$


bharath_dasaraju@cloudshell:~ (safi-sandbox-tykapigw)$ kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}"| base64 -d && echo
W0621 10:20:37.030574     794 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
zTZ7x4CDTB0T19X9
bharath_dasaraju@cloudshell:~ (safi-sandbox-tykapigw)$

