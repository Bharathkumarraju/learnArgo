➜  relearn_argo git:(main) ✗ kubectl get nodes -o wide
NAME                             STATUS   ROLES                  AGE    VERSION        INTERNAL-IP   EXTERNAL-IP   OS-IMAGE   KERNEL-VERSION     CONTAINER-RUNTIME
k3d-test-argo-cluster-server-0   Ready    control-plane,master   112s   v1.25.7+k3s1   172.18.0.3    <none>        K3s dev    5.15.49-linuxkit   containerd://1.6.15-k3s1
k3d-test-argo-cluster-agent-1    Ready    <none>                 108s   v1.25.7+k3s1   172.18.0.5    <none>        K3s dev    5.15.49-linuxkit   containerd://1.6.15-k3s1
k3d-test-argo-cluster-agent-0    Ready    <none>                 108s   v1.25.7+k3s1   172.18.0.4    <none>        K3s dev    5.15.49-linuxkit   containerd://1.6.15-k3s1
➜  relearn_argo git:(main)
