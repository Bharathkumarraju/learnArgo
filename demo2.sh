bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ArgoCD % k3d cluster create argocd-cluster --config ./cluster-config.yaml
INFO[0000] Using config file ./cluster-config.yaml (k3d.io/v1alpha2#simple) 
WARN[0000] Default config apiVersion is 'k3d.io/v1alpha4', but you're using 'k3d.io/v1alpha2': consider migrating. 
INFO[0000] Prep: Network                                
INFO[0000] Created network 'k3d-argocd-cluster'         
INFO[0000] Created image volume k3d-argocd-cluster-images 
INFO[0000] Starting new tools node...                   
INFO[0001] Creating node 'k3d-argocd-cluster-server-0'  
INFO[0002] Pulling image 'ghcr.io/k3d-io/k3d-tools:5.4.3' 
INFO[0005] Pulling image 'docker.io/rancher/k3s:v1.23.6-k3s1' 
INFO[0005] Starting Node 'k3d-argocd-cluster-tools'     
INFO[0012] Creating node 'k3d-argocd-cluster-agent-0'   
INFO[0012] Creating node 'k3d-argocd-cluster-agent-1'   
INFO[0013] Creating LoadBalancer 'k3d-argocd-cluster-serverlb' 
INFO[0014] Pulling image 'ghcr.io/k3d-io/k3d-proxy:5.4.3' 
INFO[0019] Using the k3d-tools node to gather environment information 
INFO[0019] Starting new tools node...                   
INFO[0019] Starting Node 'k3d-argocd-cluster-tools'     
INFO[0020] Starting cluster 'argocd-cluster'            
INFO[0020] Starting servers...                          
INFO[0021] Starting Node 'k3d-argocd-cluster-server-0'  
INFO[0024] Starting agents...                           
INFO[0025] Starting Node 'k3d-argocd-cluster-agent-0'   
INFO[0025] Starting Node 'k3d-argocd-cluster-agent-1'   
INFO[0037] Starting helpers...                          
INFO[0037] Starting Node 'k3d-argocd-cluster-serverlb'  
INFO[0043] Injecting records for hostAliases (incl. host.k3d.internal) and for 5 network members into CoreDNS configmap...' 
INFO[0046] Cluster 'argocd-cluster' created successfully! 
INFO[0046] You can now use it like this:                
kubectl cluster-info
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ArgoCD % kubectl cluster-info
Kubernetes control plane is running at https://0.0.0.0:50121
CoreDNS is running at https://0.0.0.0:50121/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:50121/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ArgoCD % kubectl config get-contexts
CURRENT   NAME                                                 CLUSTER                                              AUTHINFO                                             NAMESPACE
          gke_bharathpoc_us-central1_testcluster               gke_bharathpoc_us-central1_testcluster               gke_bharathpoc_us-central1_testcluster               
          gke_safi-sandbox-tykapigw_asia-southeast1_apigwtyk   gke_safi-sandbox-tykapigw_asia-southeast1_apigwtyk   gke_safi-sandbox-tykapigw_asia-southeast1_apigwtyk   
          gke_safi-sandbox-tykapigw_asia-southeast1_tykapigw   gke_safi-sandbox-tykapigw_asia-southeast1_tykapigw   gke_safi-sandbox-tykapigw_asia-southeast1_tykapigw   
*         k3d-argocd-cluster                                   k3d-argocd-cluster                                   admin@k3d-argocd-cluster                             
          minikube                                             minikube                                             minikube                                             default
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ArgoCD % 





bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ArgoCD % kubectl get nodes -o wide
NAME                          STATUS   ROLES                  AGE     VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE   KERNEL-VERSION      CONTAINER-RUNTIME
k3d-argocd-cluster-server-0   Ready    control-plane,master   2m12s   v1.23.6+k3s1   172.18.0.3    <none>        K3s dev    5.10.104-linuxkit   containerd://1.5.11-k3s2
k3d-argocd-cluster-agent-1    Ready    <none>                 2m3s    v1.23.6+k3s1   172.18.0.5    <none>        K3s dev    5.10.104-linuxkit   containerd://1.5.11-k3s2
k3d-argocd-cluster-agent-0    Ready    <none>                 2m3s    v1.23.6+k3s1   172.18.0.4    <none>        K3s dev    5.10.104-linuxkit   containerd://1.5.11-k3s2
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro ArgoCD % 

