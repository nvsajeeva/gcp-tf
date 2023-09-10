# gcp-tf

## credentials

```
 gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw region) --project=<project> --region=<zone>
```

## Prometheus

```
helm repo add Prometheus-community https://prometheus-community.github.io/helm-charts
helm search repo kube-prometheus-stack
helm pull Prometheus-community/kube-prometheus-stack --untar
helm install prometheus ./helm/kube-prometheus-stack

kubectl port-forward prometheus-prometheus-kube-prometheus-prometheus-0 9090

```

## References

https://developer.hashicorp.com/terraform/tutorials/kubernetes/gke
