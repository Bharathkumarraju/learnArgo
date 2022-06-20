# ArgoCD

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get all -n argocd
NAME                                                    READY   STATUS    RESTARTS   AGE
pod/argocd-redis-896595fb7-ddn9l                        1/1     Running   0          5m56s
pod/argocd-notifications-controller-759b6bcc4d-v26vd    1/1     Running   0          5m57s
pod/argocd-server-5674bcbc44-6d25v                      1/1     Running   0          5m56s
pod/argocd-dex-server-655f944db8-jltn6                  1/1     Running   0          5m57s
pod/argocd-applicationset-controller-7dd9d4b769-4b9qj   1/1     Running   0          5m57s
pod/argocd-repo-server-856b477f86-n4l7m                 1/1     Running   0          5m56s
pod/argocd-application-controller-0                     1/1     Running   0          5m56s

NAME                                              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
service/argocd-applicationset-controller          ClusterIP   10.43.13.163    <none>        7000/TCP,8080/TCP            5m57s
service/argocd-dex-server                         ClusterIP   10.43.105.204   <none>        5556/TCP,5557/TCP,5558/TCP   5m57s
service/argocd-metrics                            ClusterIP   10.43.126.10    <none>        8082/TCP                     5m57s
service/argocd-notifications-controller-metrics   ClusterIP   10.43.30.103    <none>        9001/TCP                     5m57s
service/argocd-redis                              ClusterIP   10.43.75.146    <none>        6379/TCP                     5m57s
service/argocd-repo-server                        ClusterIP   10.43.143.247   <none>        8081/TCP,8084/TCP            5m57s
service/argocd-server                             ClusterIP   10.43.3.157     <none>        80/TCP,443/TCP               5m57s
service/argocd-server-metrics                     ClusterIP   10.43.91.35     <none>        8083/TCP                     5m57s

NAME                                               READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/argocd-redis                       1/1     1            1           5m57s
deployment.apps/argocd-notifications-controller    1/1     1            1           5m57s
deployment.apps/argocd-server                      1/1     1            1           5m56s
deployment.apps/argocd-dex-server                  1/1     1            1           5m57s
deployment.apps/argocd-applicationset-controller   1/1     1            1           5m57s
deployment.apps/argocd-repo-server                 1/1     1            1           5m57s

NAME                                                          DESIRED   CURRENT   READY   AGE
replicaset.apps/argocd-redis-896595fb7                        1         1         1       5m57s
replicaset.apps/argocd-notifications-controller-759b6bcc4d    1         1         1       5m57s
replicaset.apps/argocd-server-5674bcbc44                      1         1         1       5m56s
replicaset.apps/argocd-dex-server-655f944db8                  1         1         1       5m57s
replicaset.apps/argocd-applicationset-controller-7dd9d4b769   1         1         1       5m57s
replicaset.apps/argocd-repo-server-856b477f86                 1         1         1       5m56s

NAME                                             READY   AGE
statefulset.apps/argocd-application-controller   1/1     5m56s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get svc -n argocd
NAME                                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
argocd-applicationset-controller          ClusterIP   10.43.13.163    <none>        7000/TCP,8080/TCP            6m49s
argocd-dex-server                         ClusterIP   10.43.105.204   <none>        5556/TCP,5557/TCP,5558/TCP   6m49s
argocd-metrics                            ClusterIP   10.43.126.10    <none>        8082/TCP                     6m49s
argocd-notifications-controller-metrics   ClusterIP   10.43.30.103    <none>        9001/TCP                     6m49s
argocd-redis                              ClusterIP   10.43.75.146    <none>        6379/TCP                     6m49s
argocd-repo-server                        ClusterIP   10.43.143.247   <none>        8081/TCP,8084/TCP            6m49s
argocd-server                             ClusterIP   10.43.3.157     <none>        80/TCP,443/TCP               6m49s
argocd-server-metrics                     ClusterIP   10.43.91.35     <none>        8083/TCP                     6m49s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
service/argocd-server patched
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get svc -n argocd                                                    
NAME                                      TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                      AGE
argocd-applicationset-controller          ClusterIP   10.43.13.163    <none>        7000/TCP,8080/TCP            8m19s
argocd-dex-server                         ClusterIP   10.43.105.204   <none>        5556/TCP,5557/TCP,5558/TCP   8m19s
argocd-metrics                            ClusterIP   10.43.126.10    <none>        8082/TCP                     8m19s
argocd-notifications-controller-metrics   ClusterIP   10.43.30.103    <none>        9001/TCP                     8m19s
argocd-redis                              ClusterIP   10.43.75.146    <none>        6379/TCP                     8m19s
argocd-repo-server                        ClusterIP   10.43.143.247   <none>        8081/TCP,8084/TCP            8m19s
argocd-server-metrics                     ClusterIP   10.43.91.35     <none>        8083/TCP                     8m19s
argocd-server                             NodePort    10.43.3.157     <none>        80:31728/TCP,443:32683/TCP   8m19s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 


In order to access the service for the ArgoCD the API Server we use port forwarding.

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
service/argocd-server patched
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo %

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl port-forward svc/argocd-server -n argocd 8080:443
Forwarding from 127.0.0.1:8080 -> 8080
Forwarding from [::1]:8080 -> 8080


