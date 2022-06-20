bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl config get-contexts -o name
gke_bharathpoc_us-central1_testcluster
gke_safi-sandbox-tykapigw_asia-southeast1_apigwtyk
gke_safi-sandbox-tykapigw_asia-southeast1_tykapigw
k3d-argocd-cluster
k3d-bk-dev-cluster
minikube
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl config use-context k3d-bk-dev-cluster 
Switched to context "k3d-bk-dev-cluster".
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl get secret 
NAME                  TYPE                                  DATA   AGE
default-token-s6tp8   kubernetes.io/service-account-token   3      54m
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % cat ~/.docker/config.json
{
        "auths": {
                "https://index.docker.io/v1/": {}
        },
        "credsStore": "desktop",
        "credHelpers": {
                "asia.gcr.io": "gcloud",
                "eu.gcr.io": "gcloud",
                "gcr.io": "gcloud",
                "marketplace.gcr.io": "gcloud",
                "staging-k8s.gcr.io": "gcloud",
                "us.gcr.io": "gcloud"
        }
}%                                                                                                                                                                                                                     
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl create secret docker-registry regcred \
> --docker-server=https://index.docker.io/v1/ \
> --docker-username=bharathkumarraju \
> --docker-password=sfkhfierjferijsfioer \
> --docker-email=shfoirfriwporp@gmail.com 
secret/regcred created
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 