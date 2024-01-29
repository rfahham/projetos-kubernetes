# Deployment NGINX

## Step 1 - Listar os clusters

``` bash
kubectx
  qac-prod-gke
  sre-dev-gke
  sre-hub-gke
```

## Step 2 - Selecionar o cluster

``` bash
kubectx sre-dev-gke
```

## Step 3 - Criar o namespace "workon"

``` bash
kubectl create namespace workon
```

## Step 4 - Listar os namespaces

``` bash
kubens ou kubectl get ns
```

``` bash
kubens workon
```

## Step 5 - Subir o POD

``` bash
kubectl apply -f deployment.yaml
  deployment.apps/nginx-deployment created
```

### ou

``` bash
kubectl apply -f deployment.yaml -n workon
```

## Step 6 - Listar o deployment

``` bash
kubectl get deployments 
  NAME               READY   UP-TO-DATE   AVAILABLE   AGE
  nginx-deployment   2/2     2            2           66s
```

## Step 7 - Listar o pod

``` bash
kubectl get pods
  NAME                                READY   STATUS    RESTARTS   AGE
  nginx-deployment-6595874d85-8g67r   1/1     Running   0          2m43s
  nginx-deployment-6595874d85-cfnsw   1/1     Running   0          2m43s
```

### Acessando o pod

```bash
kubectl exec -it nginx-deployment-6595874d85-8g67r -n workon -- /bin/bash
```

## Step 8 - Port-Forward

``` bash
kubectl port-forward deployment/nginx-deployment 8080:80
  Forwarding from 127.0.0.1:8080 -> 80
  Forwarding from [::1]:8080 -> 80
```

## Step 9 - Remover a Release

``` bash
kubectl delete -f deployment.yaml
  deployment.apps "nginx-deployment" deleted
```

## Step 10 - Remover o namespace

``` bash
kubectl delete -f deployment.yaml
  deployment.apps "nginx-deployment" deleted
```
