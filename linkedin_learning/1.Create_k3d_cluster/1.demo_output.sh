bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % k3d cluster create --config 1.cluster-config.yaml
INFO[0000] Using config file 1.cluster-config.yaml (k3d.io/v1alpha3#simple)
WARN[0000] Default config apiVersion is 'k3d.io/v1alpha4', but you're using 'k3d.io/v1alpha3': consider migrating.
INFO[0000] Prep: Network
INFO[0000] Created network 'k3d-bharath-argo-cluster'
INFO[0000] Created image volume k3d-bharath-argo-cluster-images
INFO[0000] Starting new tools node...
INFO[0000] Starting Node 'k3d-bharath-argo-cluster-tools'
INFO[0001] Creating node 'k3d-bharath-argo-cluster-server-0'
INFO[0001] Creating node 'k3d-bharath-argo-cluster-agent-0'
INFO[0001] Creating node 'k3d-bharath-argo-cluster-agent-1'
INFO[0001] Creating LoadBalancer 'k3d-bharath-argo-cluster-serverlb'
INFO[0001] Using the k3d-tools node to gather environment information
INFO[0001] Starting new tools node...
INFO[0001] Starting Node 'k3d-bharath-argo-cluster-tools'
INFO[0003] Starting cluster 'bharath-argo-cluster'
INFO[0003] Starting servers...
INFO[0003] Starting Node 'k3d-bharath-argo-cluster-server-0'
INFO[0008] Starting agents...
INFO[0008] Starting Node 'k3d-bharath-argo-cluster-agent-1'
INFO[0008] Starting Node 'k3d-bharath-argo-cluster-agent-0'
INFO[0018] Starting helpers...
INFO[0018] Starting Node 'k3d-bharath-argo-cluster-serverlb'
INFO[0024] Injecting records for hostAliases (incl. host.k3d.internal) and for 5 network members into CoreDNS configmap...
INFO[0026] Cluster 'bharath-argo-cluster' created successfully!
INFO[0026] You can now use it like this:
kubectl cluster-info
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %'


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl cluster-info
Kubernetes control plane is running at https://0.0.0.0:55322
CoreDNS is running at https://0.0.0.0:55322/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:55322/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % k3d cluster list
NAME                   SERVERS   AGENTS   LOADBALANCER
bharath-argo-cluster   1/1       2/2      true
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl get nodes -o wide
NAME                                STATUS   ROLES                  AGE   VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE   KERNEL-VERSION      CONTAINER-RUNTIME
k3d-bharath-argo-cluster-server-0   Ready    control-plane,master   10m   v1.23.6+k3s1   172.21.0.3    <none>        K3s dev    5.10.104-linuxkit   containerd://1.5.11-k3s2
k3d-bharath-argo-cluster-agent-1    Ready    <none>                 10m   v1.23.6+k3s1   172.21.0.4    <none>        K3s dev    5.10.104-linuxkit   containerd://1.5.11-k3s2
k3d-bharath-argo-cluster-agent-0    Ready    <none>                 10m   v1.23.6+k3s1   172.21.0.5    <none>        K3s dev    5.10.104-linuxkit   containerd://1.5.11-k3s2
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl get pods --all-namespaces
NAMESPACE     NAME                                      READY   STATUS      RESTARTS   AGE
kube-system   local-path-provisioner-6c79684f77-ghv4f   1/1     Running     0          10m
kube-system   coredns-d76bd69b-dshlg                    1/1     Running     0          10m
kube-system   metrics-server-7cd5fcb6b7-mq4k4           1/1     Running     0          10m
kube-system   helm-install-traefik-crd-rttg4            0/1     Completed   0          10m
kube-system   helm-install-traefik-h8sxh                0/1     Completed   2          10m
kube-system   svclb-traefik-6htt8                       2/2     Running     0          9m34s
kube-system   svclb-traefik-pxzd8                       2/2     Running     0          9m34s
kube-system   svclb-traefik-9msbc                       2/2     Running     0          9m34s
kube-system   traefik-df4ff85d6-zv67n                   1/1     Running     0          9m34s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl get namespace
NAME              STATUS   AGE
kube-system       Active   13m
default           Active   13m
kube-public       Active   13m
kube-node-lease   Active   13m
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl create namespace argocd
namespace/argocd created
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % clear
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster % kubectl get namespace
NAME              STATUS   AGE
kube-system       Active   14m
default           Active   14m
kube-public       Active   14m
kube-node-lease   Active   14m
argocd            Active   46s
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro 1.Create_k3d_cluster %



