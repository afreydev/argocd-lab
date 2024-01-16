# Argo CD Lab

* kubectl create ns argocd
* kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml -n argocd
* kubectl get secret -n argocd argocd-initial-admin-secret -o yaml
* echo "password" | base64 -d
* kubectl port-forward svc/argocd-server -n argocd 8080:443
