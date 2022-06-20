bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % helm install redis tyk-helm/simple-redis -n tyk
NAME: redis
LAST DEPLOYED: Mon Jun 20 18:06:05 2022
NAMESPACE: tyk
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
1. Connect to redis: redis.tyk.svc.cluster.local:6379
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % helm install mongo tyk-helm/simple-mongodb -n tyk
NAME: mongo
LAST DEPLOYED: Mon Jun 20 18:06:38 2022
NAMESPACE: tyk
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
1. Connect to mongodb: mongo.tyk.svc.cluster.local:27017
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 


Values.yaml

https://gitlab.com/free54/tykcd/-/blob/main/values.yaml




https://github.com/hblixt/argocd-example-apps

