bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % IP=`ifconfig en0 | grep inet | grep -v inet6 | awk '{print $2}'` && echo $IP
192.168.1.10
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % k3d cluster create bk-dev-cluster --config dev-cluster-config.yaml 
INFO[0000] Using config file dev-cluster-config.yaml (k3d.io/v1alpha2#simple) 
WARN[0000] Default config apiVersion is 'k3d.io/v1alpha4', but you're using 'k3d.io/v1alpha2': consider migrating. 
INFO[0000] Prep: Network                                
INFO[0000] Created network 'k3d-bk-dev-cluster'         
INFO[0000] Created image volume k3d-bk-dev-cluster-images 
INFO[0000] Starting new tools node...                   
INFO[0000] Starting Node 'k3d-bk-dev-cluster-tools'     
INFO[0001] Creating node 'k3d-bk-dev-cluster-server-0'  
INFO[0001] Creating LoadBalancer 'k3d-bk-dev-cluster-serverlb' 
INFO[0001] Using the k3d-tools node to gather environment information 
INFO[0003] Starting new tools node...                   
INFO[0003] Starting Node 'k3d-bk-dev-cluster-tools'     
INFO[0005] Starting cluster 'bk-dev-cluster'            
INFO[0005] Starting servers...                          
INFO[0005] Starting Node 'k3d-bk-dev-cluster-server-0'  
INFO[0015] All agents already running.                  
INFO[0015] Starting helpers...                          
INFO[0015] Starting Node 'k3d-bk-dev-cluster-serverlb'  
INFO[0022] Injecting records for hostAliases (incl. host.k3d.internal) and for 3 network members into CoreDNS configmap...' 
INFO[0024] Cluster 'bk-dev-cluster' created successfully! 
INFO[0024] You can now use it like this:                
kubectl cluster-info
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl config get-contexts
CURRENT   NAME                                                 CLUSTER                                              AUTHINFO                                             NAMESPACE
          gke_bharathpoc_us-central1_testcluster               gke_bharathpoc_us-central1_testcluster               gke_bharathpoc_us-central1_testcluster               
          gke_safi-sandbox-tykapigw_asia-southeast1_apigwtyk   gke_safi-sandbox-tykapigw_asia-southeast1_apigwtyk   gke_safi-sandbox-tykapigw_asia-southeast1_apigwtyk   
          gke_safi-sandbox-tykapigw_asia-southeast1_tykapigw   gke_safi-sandbox-tykapigw_asia-southeast1_tykapigw   gke_safi-sandbox-tykapigw_asia-southeast1_tykapigw   
          k3d-argocd-cluster                                   k3d-argocd-cluster                                   admin@k3d-argocd-cluster                             
*         k3d-bk-dev-cluster                                   k3d-bk-dev-cluster                                   admin@k3d-bk-dev-cluster                             
          minikube                                             minikube                                             minikube                                             default
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl cluster-info
Kubernetes control plane is running at https://0.0.0.0:50615
CoreDNS is running at https://0.0.0.0:50615/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:50615/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 




bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl cluster-info
Kubernetes control plane is running at https://0.0.0.0:50615
CoreDNS is running at https://0.0.0.0:50615/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:50615/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster %

update the "k3d-bk-dev-cluster" cluster ip with $IP in the .kube/config file.

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % vim ~/.kube/config
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % echo $IP
192.168.1.10
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % vim ~/.kube/config
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl version
WARNING: This version information is deprecated and will be replaced with the output from kubectl version --short.  Use --output=yaml|json to get the full version.
Client Version: version.Info{Major:"1", Minor:"24", GitVersion:"v1.24.1", GitCommit:"3ddd0f45aa91e2f30c70734b175631bec5b5825a", GitTreeState:"clean", BuildDate:"2022-05-24T12:17:11Z", GoVersion:"go1.18.2", Compiler:"gc", Platform:"darwin/arm64"}
Kustomize Version: v4.5.4
Server Version: version.Info{Major:"1", Minor:"23", GitVersion:"v1.23.6+k3s1", GitCommit:"418c3fa858b69b12b9cefbcff0526f666a6236b9", GitTreeState:"clean", BuildDate:"2022-04-28T22:16:58Z", GoVersion:"go1.17.5", Compiler:"gc", Platform:"linux/arm64"}
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl cluster-info
Kubernetes control plane is running at https://192.168.1.10:50615
CoreDNS is running at https://192.168.1.10:50615/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://192.168.1.10:50615/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl config get-contexts -o name
gke_bharathpoc_us-central1_testcluster
gke_safi-sandbox-tykapigw_asia-southeast1_apigwtyk
gke_safi-sandbox-tykapigw_asia-southeast1_tykapigw
k3d-argocd-cluster
k3d-bk-dev-cluster
minikube
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 


