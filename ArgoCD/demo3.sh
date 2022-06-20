bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo
HnDHxWkcJEfhuxQY
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get all
NAME                                    READY   STATUS    RESTARTS   AGE
pod/nginx-deployment-85b98978db-bphxb   1/1     Running   0          11m

NAME                    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
service/kubernetes      ClusterIP   10.43.0.1      <none>        443/TCP        57m
service/nginx-service   NodePort    10.43.177.72   <none>        80:30943/TCP   11m

NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-deployment   1/1     1            1           11m

NAME                                          DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-deployment-85b98978db   1         1         1       11m
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d && echo
HnDHxWkcJEfhuxQY
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % argocd login localhost:8080
WARNING: server certificate had error: x509: “Argo CD” certificate is not trusted. Proceed insecurely (y/n)? y
Username: admin
Password: 
'admin:login' logged in successfully
Context 'localhost:8080' updated
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % argocd account update-password
*** Enter password of currently logged in user (admin): 
*** Enter new password for user admin: 
*** Confirm new password for user admin: 
Password updated
Context 'localhost:8080' updated
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 

