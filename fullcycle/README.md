# Kubernetes

[Iniciando com Kubernetes: Tutorial passo a passo](https://www.youtube.com/watch?v=IeB9_PSGp6k)

## Criando pod

```bash
kubectl apply -f pod.yaml
```

## Criando Replicaset

garante que pelo menos 1 pod esteja no ar, se fizer alteração no código, aumentar ou diminuir a quantidade não vai refletir o deploy

```bash
kubectl apply -f replicaset.yaml
    replicaset.apps/nginx-replicaset created
```

## Criando um Deployment

Atualiza o código

```bash
kubectl apply -f deployment.yaml
    deployment.apps/nginx-deployment created
```

## Balanceamento


## Apagando um Deployment

```bash
kubectl delete -f deployment.yaml
    deployment.apps/nginx-deployment deleted
```
