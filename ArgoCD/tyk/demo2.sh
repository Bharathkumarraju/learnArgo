bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get all -n tyk                                 
NAME                                                READY   STATUS    RESTARTS       AGE
pod/redis-69ff4df86-gfd2f                           1/1     Running   0              31m
pod/mongo-654d95c78-sjxlb                           1/1     Running   0              31m
pod/pump-tyk-argocd-tyk-pro-7cf5455fd7-78sjb        1/1     Running   0              6m13s
pod/gateway-tyk-argocd-tyk-pro-84d96b4b57-jl2pw     1/1     Running   0              6m13s
pod/gateway-tyk-argocd-tyk-pro-84d96b4b57-w8wbm     1/1     Running   0              6m14s
pod/gateway-tyk-argocd-tyk-pro-84d96b4b57-6nbj2     1/1     Running   1 (5m5s ago)   6m13s
pod/dashboard-tyk-argocd-tyk-pro-5887468857-mwz84   1/1     Running   0              4m51s

NAME                                       TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
service/redis                              ClusterIP   10.43.36.230    <none>        6379/TCP         31m
service/mongo                              ClusterIP   10.43.187.94    <none>        27017/TCP        31m
service/dashboard-svc-tyk-argocd-tyk-pro   NodePort    10.43.135.142   <none>        3000:30347/TCP   6m14s
service/gateway-svc-tyk-argocd-tyk-pro     NodePort    10.43.246.7     <none>        8080:30785/TCP   6m14s

NAME                                           READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/redis                          1/1     1            1           31m
deployment.apps/mongo                          1/1     1            1           31m
deployment.apps/pump-tyk-argocd-tyk-pro        1/1     1            1           6m14s
deployment.apps/gateway-tyk-argocd-tyk-pro     3/3     3            3           6m14s
deployment.apps/dashboard-tyk-argocd-tyk-pro   1/1     1            1           6m14s

NAME                                                      DESIRED   CURRENT   READY   AGE
replicaset.apps/redis-69ff4df86                           1         1         1       31m
replicaset.apps/mongo-654d95c78                           1         1         1       31m
replicaset.apps/pump-tyk-argocd-tyk-pro-7cf5455fd7        1         1         1       6m14s
replicaset.apps/dashboard-tyk-argocd-tyk-pro-6b4c7dc47f   0         0         0       6m14s
replicaset.apps/gateway-tyk-argocd-tyk-pro-84d96b4b57     3         3         3       6m14s
replicaset.apps/dashboard-tyk-argocd-tyk-pro-5887468857   1         1         1       4m51s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl port-forward service/gateway-svc-tyk-argocd-tyk-pro 9999:8080
Error from server (NotFound): services "gateway-svc-tyk-argocd-tyk-pro" not found
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl port-forward service/gateway-svc-tyk-argocd-tyk-pro 9999:8080 -n tyk
Forwarding from 127.0.0.1:9999 -> 8080
Forwarding from [::1]:9999 -> 8080
Handling connection for 9999
Handling connection for 9999
Handling connection for 9999
Handling connection for 9999
Handling connection for 9999
Handling connection for 9999


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl port-forward service/dashboard-svc-tyk-argocd-tyk-pro 9998:3000 -n tyk
Forwarding from 127.0.0.1:9998 -> 3000
Forwarding from [::1]:9998 -> 3000
Handling connection for 9998
Handling connection for 9998
Handling connection for 9998
Handling connection for 9998
Handling connection for 9998
Handling connection for 9998
Handling connection for 9998





bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get all -n tyk
NAME                                                  READY   STATUS    RESTARTS       AGE
pod/redis-69ff4df86-gfd2f                             1/1     Running   0              51m
pod/mongo-654d95c78-sjxlb                             1/1     Running   0              50m
pod/pump-tyk-argocd-tyk-pro-7cf5455fd7-78sjb          1/1     Running   0              25m
pod/gateway-tyk-argocd-tyk-pro-84d96b4b57-jl2pw       1/1     Running   0              25m
pod/gateway-tyk-argocd-tyk-pro-84d96b4b57-w8wbm       1/1     Running   0              25m
pod/gateway-tyk-argocd-tyk-pro-84d96b4b57-6nbj2       1/1     Running   1 (24m ago)    25m
pod/dashboard-tyk-argocd-tyk-pro-5887468857-mwz84     1/1     Running   0              24m
pod/gateway-tyk-argocd-tyk-pro-84d96b4b57-4m2tm       1/1     Running   0              2m7s
pod/bootstrap-post-install-tyk-argocd-tyk-pro-mxxzt   0/1     Error     0              111s
pod/gateway-tyk-argocd-tyk-pro-84d96b4b57-wglnt       1/1     Running   1 (102s ago)   2m7s
pod/bootstrap-post-install-tyk-argocd-tyk-pro-svljt   0/1     Error     0              98s

NAME                                       TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
service/redis                              ClusterIP   10.43.36.230    <none>        6379/TCP         51m
service/mongo                              ClusterIP   10.43.187.94    <none>        27017/TCP        50m
service/dashboard-svc-tyk-argocd-tyk-pro   NodePort    10.43.135.142   <none>        3000:30347/TCP   25m
service/gateway-svc-tyk-argocd-tyk-pro     NodePort    10.43.246.7     <none>        8080:30785/TCP   25m

NAME                                           READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/redis                          1/1     1            1           51m
deployment.apps/mongo                          1/1     1            1           50m
deployment.apps/pump-tyk-argocd-tyk-pro        1/1     1            1           25m
deployment.apps/dashboard-tyk-argocd-tyk-pro   1/1     1            1           25m
deployment.apps/gateway-tyk-argocd-tyk-pro     5/5     5            5           25m

NAME                                                      DESIRED   CURRENT   READY   AGE
replicaset.apps/redis-69ff4df86                           1         1         1       51m
replicaset.apps/mongo-654d95c78                           1         1         1       50m
replicaset.apps/pump-tyk-argocd-tyk-pro-7cf5455fd7        1         1         1       25m
replicaset.apps/dashboard-tyk-argocd-tyk-pro-6b4c7dc47f   0         0         0       25m
replicaset.apps/dashboard-tyk-argocd-tyk-pro-5887468857   1         1         1       24m
replicaset.apps/gateway-tyk-argocd-tyk-pro-84d96b4b57     5         5         5       25m

NAME                                                  COMPLETIONS   DURATION   AGE
job.batch/bootstrap-post-install-tyk-argocd-tyk-pro   0/1           111s       111s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo %

