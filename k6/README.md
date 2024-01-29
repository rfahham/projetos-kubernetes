# Deployment

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

## Step 3 - Criar o namespace "k6"

``` bash
kubectl create namespace k6
```

## Step 4 - Listar os namespaces

``` bash
kubens 
ou
kubectl get ns
```

## Step 5 - Acessar o namespace

``` bash
kubens k6
```

## Step 6 - Subir o POD

``` bash
kubectl apply -f deployment.yaml
  deployment.apps/k6-deployment created
```

### ou passando o namespace

``` bash
kubectl apply -f deployment.yaml -n k6
```

## Step 7 - Listar o deployment

``` bash
kubectl get deployments 
  NAME               READY   UP-TO-DATE   AVAILABLE   AGE
  k6-deployment   2/2     2            2           66s
```

## Step 8 - Listar o pod

``` bash
kubectl get pods
  NAME                                READY   STATUS    RESTARTS   AGE
  k6-deployment-6595874d85-8g67r   1/1     Running   0          2m43s
  k6-deployment-6595874d85-cfnsw   1/1     Running   0          2m43s
```

### Acessando o pod

```bash
kubectl exec -it k6-deployment-6595874d85-8g67r -n k6 -- /bin/bash
```

## Step 9 - Remover a Release

``` bash
kubectl delete -f deployment.yaml
  deployment.apps "k6-deployment" deleted
```

## Step 11 - Remover o namespace

``` bash
kubectl delete -f deployment.yaml
  deployment.apps "k6-deployment" deleted
```
