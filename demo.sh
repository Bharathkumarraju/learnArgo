GitOps 

Apply CI/CD both code and infra 

ArgoCD works with below:
---------------------------->
1. kustomize applications
2. helm charts
3. ksonnet applications
4. jsonnet files
5. plain YAML files 
6. any custom config management tool using plugins



bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % brew install k3d
==> Auto-updated Homebrew!
Updated 1 tap (homebrew/core).

You have 4 outdated formulae installed.
You can upgrade them with brew upgrade
or list them with brew outdated.

==> Downloading https://ghcr.io/v2/homebrew/core/k3d/manifests/5.4.3
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/k3d/blobs/sha256:8c2af98a480e0cbc308317d9a690a2e4d7a1ca765e5f587ead80222c1333fc01
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:8c2af98a480e0cbc308317d9a690a2e4d7a1ca765e5f587ead80222c1333fc01?se=2022-06-20T01%3A35%3A00Z&sig=yAluVAP83LszD0%2FdRj3nRbbETDY49yw256sokv5iTiw%3D&sp
######################################################################## 100.0%
==> Pouring k3d--5.4.3.arm64_monterey.bottle.tar.gz
==> Caveats
zsh completions have been installed to:
  /opt/homebrew/share/zsh/site-functions
==> Summary
🍺  /opt/homebrew/Cellar/k3d/5.4.3: 9 files, 18.0MB
==> Running `brew cleanup k3d`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % k3d version
k3d version v5.4.3
k3s version v1.23.6-k3s1 (default)
bahrathkumaraju@Bahrathkumarajus-MacBook-Pro learnArgo % 



