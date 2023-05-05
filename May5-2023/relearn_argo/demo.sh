➜  relearn_argo git:(main) ✗ k3d cluster create --config k8s_cluster.yaml
INFO[0000] Using config file k8s_cluster.yaml (k3d.io/v1alpha3#simple)
WARN[0000] Default config apiVersion is 'k3d.io/v1alpha4', but you're using 'k3d.io/v1alpha3': consider migrating.
INFO[0000] Prep: Network
INFO[0000] Created network 'k3d-test-argo-cluster'
INFO[0000] Created image volume k3d-test-argo-cluster-images
INFO[0000] Starting new tools node...
INFO[0001] Creating node 'k3d-test-argo-cluster-server-0'
INFO[0001] Pulling image 'ghcr.io/k3d-io/k3d-tools:5.4.9'
INFO[0003] Starting Node 'k3d-test-argo-cluster-tools'
INFO[0004] Pulling image 'docker.io/rancher/k3s:v1.25.7-k3s1'
INFO[0012] Creating node 'k3d-test-argo-cluster-agent-0'
INFO[0012] Creating node 'k3d-test-argo-cluster-agent-1'
INFO[0012] Creating LoadBalancer 'k3d-test-argo-cluster-serverlb'
INFO[0013] Pulling image 'ghcr.io/k3d-io/k3d-proxy:5.4.9'
INFO[0027] Using the k3d-tools node to gather environment information
INFO[0027] Starting new tools node...
INFO[0027] Starting Node 'k3d-test-argo-cluster-tools'
INFO[0028] Starting cluster 'test-argo-cluster'
INFO[0028] Starting servers...
INFO[0028] Starting Node 'k3d-test-argo-cluster-server-0'
INFO[0032] Starting agents...
INFO[0032] Starting Node 'k3d-test-argo-cluster-agent-0'
INFO[0032] Starting Node 'k3d-test-argo-cluster-agent-1'
INFO[0036] Starting helpers...
INFO[0036] Starting Node 'k3d-test-argo-cluster-serverlb'
INFO[0042] Injecting records for hostAliases (incl. host.k3d.internal) and for 5 network members into CoreDNS configmap...
INFO[0045] Cluster 'test-argo-cluster' created successfully!
INFO[0045] You can now use it like this:
kubectl cluster-info
➜  relearn_argo git:(main) ✗



➜  relearn_argo git:(main) ✗ kubectl cluster-info
E0505 13:07:39.165173   10147 memcache.go:287] couldn't get resource list for metrics.k8s.io/v1beta1: the server is currently unable to handle the request
E0505 13:07:39.183009   10147 memcache.go:121] couldn't get resource list for metrics.k8s.io/v1beta1: the server is currently unable to handle the request
E0505 13:07:39.190147   10147 memcache.go:121] couldn't get resource list for metrics.k8s.io/v1beta1: the server is currently unable to handle the request
E0505 13:07:39.192456   10147 memcache.go:121] couldn't get resource list for metrics.k8s.io/v1beta1: the server is currently unable to handle the request
Kubernetes control plane is running at https://0.0.0.0:55267
CoreDNS is running at https://0.0.0.0:55267/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://0.0.0.0:55267/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
➜  relearn_argo git:(main) ✗

