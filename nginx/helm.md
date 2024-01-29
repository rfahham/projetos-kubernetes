
# Via HELM - `https://helm.sh`

``` bash
helm create nginx-helm
  Creating nginx-helm
```

```bash
tree
  nginx-helm
      ├── Chart.yaml
      ├── charts
      ├── templates
      │   ├── NOTES.txt
      │   ├── _helpers.tpl
      │   ├── deployment.yaml
      │   ├── hpa.yaml
      │   ├── ingress.yaml
      │   ├── service.yaml
      │   ├── serviceaccount.yaml
      │   └── tests
      │       └── test-connection.yaml
      └── values.yaml
```

## Creating and exploring an nginx deployment

[kubernetes.io/docs](https://kubernetes.io/docs/tasks/run-application/run-stateless-application-deployment/)

Você pode executar um aplicativo criando um objeto de implantação do Kubernetes e pode descrever uma implantação em um arquivo YAML.
Por exemplo, um arquivo YAML descreve uma implantação que executa a imagem nginx:1.14.2 Docker

## Crie uma implantação baseada no arquivo YAML

```bash
kubectl apply -f https://k8s.io/examples/application/deployment.yaml
```

## Exibir informações sobre a implantação

```bash
kubectl describe deployment nginx-deployment

  Name:     nginx-deployment
  Namespace:    default
  CreationTimestamp:  Tue, 30 Aug 2016 18:11:37 -0700
  Labels:     app=nginx
  Annotations:    deployment.kubernetes.io/revision=1
  Selector:   app=nginx
  Replicas:   2 desired | 2 updated | 2 total | 2 available | 0 unavailable
  StrategyType:   RollingUpdate
  MinReadySeconds:  0
  RollingUpdateStrategy:  1 max unavailable, 1 max surge
  Pod Template:
    Labels:       app=nginx
    Containers:
      nginx:
      Image:              nginx:1.14.2
      Port:               80/TCP
      Environment:        <none>
      Mounts:             <none>
    Volumes:              <none>
  Conditions:
    Type          Status  Reason
    ----          ------  ------
    Available     True    MinimumReplicasAvailable
    Progressing   True    NewReplicaSetAvailable
  OldReplicaSets:   <none>
  NewReplicaSet:    nginx-deployment-1771418926 (2/2 replicas created)
  No events.
```

## Liste os pods criados pela implantação

```bash
kubectl get pods -l app=nginx

  NAME                                READY     STATUS    RESTARTS   AGE
  nginx-deployment-1771418926-7o5ns   1/1       Running   0          16h
  nginx-deployment-1771418926-r18az   1/1       Running   0          16h
```

## Exibir informações sobre um pod

```bash
kubectl describe pod <pod-name>
onde <pod-name>está o nome de um de seus pods.
```
