# kubernetes

Kubernetes, também conhecido como K8s, é um sistema de código aberto para automatizar a implantação, o escalonamento e o gerenciamento de aplicativos em contêineres.

Ele agrupa contêineres que compõem um aplicativo em unidades lógicas para fácil gerenciamento e descoberta. O Kubernetes se baseia em 15 anos de experiência na execução de cargas de trabalho de produção no Google , combinado com as melhores ideias e práticas da comunidade.

[Documentação](https://kubernetes.io/docs/home/)

## Deployment

## Step 1 - Listar os clusters

``` bash
kubectx
```

### Step 2 - Selecionar o cluster

``` bash
kubectx <nome do cluster>
```

### Step 3 - Criar o namespace

``` bash
kubectl create namespace <nome do namespace>
kubectl create namespace nginx
```

### Step 4 - Listar os namespaces

``` bash
kubens ou kubectl get ns
    nginx
```

### Step 5 - Acessar o namespace

``` bash
kubens <nome do namespace>
kubens nginx
```

### Step 6 - Acessar o diretório do projeto

``` bash
cd <diretório do projeto>
```

### Step 7 - Subir o objeto (deployment)

``` bash
kubectl apply -f deployment.yaml
    deployment.apps/nginx-deployment created
```

### ou passando o namespace

``` bash
kubectl apply -f deployment.yaml -n nginx
```

### Step 8 - Listar o deployment

``` bash
kubectl get deployments 
  NAME               READY   UP-TO-DATE   AVAILABLE   AGE
  nginx-deployment   2/2     2            2           66s
```

### Step 9 - Listar o pod

``` bash
kubectl get pods
  NAME                                READY   STATUS    RESTARTS   AGE
  nginx-deployment-6595874d85-8g67r   1/1     Running   0          2m43s
  nginx-deployment-6595874d85-cfnsw   1/1     Running   0          2m43s
```

### Step 10 -Acessando o pod

```bash
kubectl exec -it nginx-deployment-6595874d85-8g67r -n nginx -- /bin/bash
```

### Step 11 - Remover a Release

``` bash
kubectl delete -f deployment.yaml
  deployment.apps "nginx-deployment" deleted
```

### Step 12 - Remover o namespace

``` bash
kubectl delete -f deployment.yaml
  deployment.apps "nginx-deployment" deleted
```
