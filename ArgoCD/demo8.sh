bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd proj list
NAME                DESCRIPTION  DESTINATIONS                        SOURCES                                                     CLUSTER-RESOURCE-WHITELIST  NAMESPACE-RESOURCE-BLACKLIST  SIGNATURE-KEYS  ORPHANED-RESOURCES
default                          *,*                                 *                                                           */*                         <none>                        <none>          disabled
bharath-dev-argocd               https://192.168.1.10:50615,default  https://github.com/Bharathkumarraju/bkr-argocd-public-repo  <none>                      <none>                        <none>          disabled
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd proj add-source bharath-dev-argocd https://github.com/Bharathkumarraju/bkr-argocd-private-repo
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd proj list                                                                                     
NAME                DESCRIPTION  DESTINATIONS                        SOURCES  CLUSTER-RESOURCE-WHITELIST  NAMESPACE-RESOURCE-BLACKLIST  SIGNATURE-KEYS  ORPHANED-RESOURCES
default                          *,*                                 *        */*                         <none>                        <none>          disabled
bharath-dev-argocd               https://192.168.1.10:50615,default  2 repos  <none>                      <none>                        <none>          disabled
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl port-forward service/hello-app-service -n default 8082:6000
Forwarding from 127.0.0.1:8082 -> 5000
Forwarding from [::1]:8082 -> 5000





bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl get all
NAME                                    READY   STATUS    RESTARTS   AGE
pod/hello-deployment-84c965958d-xvgsw   1/1     Running   0          78s

NAME                        TYPE        CLUSTER-IP   EXTERNAL-IP   PORT(S)          AGE
service/kubernetes          ClusterIP   10.43.0.1    <none>        443/TCP          76m
service/hello-app-service   NodePort    10.43.4.32   <none>        6000:32273/TCP   78s

NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/hello-deployment   1/1     1            1           78s

NAME                                          DESIRED   CURRENT   READY   AGE
replicaset.apps/hello-deployment-84c965958d   1         1         1       78s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 

