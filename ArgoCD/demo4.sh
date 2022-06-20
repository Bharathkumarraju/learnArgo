bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get deploy
NAME               READY   UP-TO-DATE   AVAILABLE   AGE
nginx-deployment   2/2     2            2           57m
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl scale deploy nginx-deployment --replicas 3
deployment.apps/nginx-deployment scaled
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get all
NAME                                    READY   STATUS    RESTARTS   AGE
pod/nginx-deployment-85b98978db-bphxb   1/1     Running   0          73m
pod/nginx-deployment-85b98978db-6tmt5   1/1     Running   0          27m
pod/nginx-deployment-85b98978db-bwl7d   1/1     Running   0          21s

NAME                    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
service/kubernetes      ClusterIP   10.43.0.1      <none>        443/TCP        119m
service/nginx-service   NodePort    10.43.177.72   <none>        80:30943/TCP   73m

NAME                               READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/nginx-deployment   3/3     3            3           73m

NAME                                          DESIRED   CURRENT   READY   AGE
replicaset.apps/nginx-deployment-85b98978db   3         3         3       73m
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl scale deploy nginx-deployment --replicas 7
deployment.apps/nginx-deployment scaled
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get pods
NAME                                READY   STATUS        RESTARTS   AGE
nginx-deployment-85b98978db-bphxb   1/1     Running       0          92m
nginx-deployment-85b98978db-6tmt5   1/1     Running       0          47m
nginx-deployment-85b98978db-zrj2w   1/1     Running       0          11m
nginx-deployment-85b98978db-jrw7v   1/1     Running       0          2m25s
nginx-deployment-85b98978db-dnntm   1/1     Running       0          2m25s
nginx-deployment-85b98978db-qfjvt   0/1     Terminating   0          5s
nginx-deployment-85b98978db-48q8z   1/1     Terminating   0          5s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get pods
NAME                                READY   STATUS    RESTARTS   AGE
nginx-deployment-85b98978db-bphxb   1/1     Running   0          92m
nginx-deployment-85b98978db-6tmt5   1/1     Running   0          47m
nginx-deployment-85b98978db-zrj2w   1/1     Running   0          11m
nginx-deployment-85b98978db-jrw7v   1/1     Running   0          2m27s
nginx-deployment-85b98978db-dnntm   1/1     Running   0          2m27s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % kubectl get pods
NAME                                READY   STATUS    RESTARTS   AGE
nginx-deployment-85b98978db-bphxb   1/1     Running   0          92m
nginx-deployment-85b98978db-6tmt5   1/1     Running   0          47m
nginx-deployment-85b98978db-zrj2w   1/1     Running   0          11m
nginx-deployment-85b98978db-jrw7v   1/1     Running   0          2m30s
nginx-deployment-85b98978db-dnntm   1/1     Running   0          2m30s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 
