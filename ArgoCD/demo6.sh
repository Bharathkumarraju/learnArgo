bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl config use-context k3d-argocd-cluster
Switched to context "k3d-argocd-cluster".
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd cluster add k3d-bk-dev-cluster  --name dev-cluster
WARNING: This will create a service account `argocd-manager` on the cluster referenced by context `k3d-bk-dev-cluster` with full cluster level privileges. Do you want to continue [y/N]? y
INFO[0002] ServiceAccount "argocd-manager" created in namespace "kube-system" 
INFO[0002] ClusterRole "argocd-manager-role" created    
INFO[0002] ClusterRoleBinding "argocd-manager-role-binding" created 
Cluster 'https://192.168.1.10:50615' added
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 

bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd login localhost:8080 --insecure
Username: admin
Password: 
'admin:login' logged in successfully
Context 'localhost:8080' updated
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd proj list
NAME     DESCRIPTION  DESTINATIONS  SOURCES  CLUSTER-RESOURCE-WHITELIST  NAMESPACE-RESOURCE-BLACKLIST  SIGNATURE-KEYS  ORPHANED-RESOURCES
default               *,*           *        */*                         <none>                        <none>          disabled
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 


bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd repo list
TYPE  NAME  REPO                                                            INSECURE  OCI    LFS    CREDS  STATUS      MESSAGE  PROJECT
git         https://github.com/Bharathkumarraju/bkr-argocd-public-repo.git  false     false  false  false  Successful           
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd app list
NAME                 CLUSTER                         NAMESPACE  PROJECT  STATUS  HEALTH   SYNCPOLICY  CONDITIONS  REPO                                                            PATH              TARGET
simple-nginx-server  https://kubernetes.default.svc  default    default  Synced  Healthy  Auto-Prune  <none>      https://github.com/Bharathkumarraju/bkr-argocd-public-repo.git  nginx_yaml_files  HEAD
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % kubectl cluster-info
Kubernetes control plane is running at https://192.168.1.10:50615
CoreDNS is running at https://192.168.1.10:50615/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://192.168.1.10:50615/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster %



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd proj create bharath-dev-argocd -d https://192.168.1.10:50615,default -s https://github.com/Bharathkumarraju/bkr-argocd-public-repo    
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % argocd proj list
NAME                DESCRIPTION  DESTINATIONS                        SOURCES                                                     CLUSTER-RESOURCE-WHITELIST  NAMESPACE-RESOURCE-BLACKLIST  SIGNATURE-KEYS  ORPHANED-RESOURCES
default                          *,*                                 *                                                           */*                         <none>                        <none>          disabled
bharath-dev-argocd               https://192.168.1.10:50615,default  https://github.com/Bharathkumarraju/bkr-argocd-public-repo  <none>                      <none>                        <none>          disabled
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro dev-k3s-cluster % 

