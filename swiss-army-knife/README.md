# swiss-army-knife

Imagem com inúmeras ferramentas para depuração

- curl
- wget
- vim
- jq
- telnet
...

## Listar os Cluster

```bash
kubectx

minikube
```

## Listar os nodes

```bash
kubectl get nodes
NAME       STATUS   ROLES           AGE   VERSION
minikube   Ready    control-plane   28h   v1.28.3

```

## Listar os Namespaces

```bash
kubens

default
kube-node-lease
kube-public
kube-system
swiss-army-knife
workon
```

ou

```bash
kubectl get namespaces

NAME               STATUS   AGE
default            Active   28h
kube-node-lease    Active   28h
kube-public        Active   28h
kube-system        Active   28h
swiss-army-knife   Active   10m
workon             Active   28h
```

## Alternar entre os namespaces swiss-army-knife

```bash
kubens swiss-army-knife
✔ Active namespace is "swiss-army-knife"
```

## Aplicar o Deployment do swiss-army-knife

```bash
kubectl apply -f deployment.yaml

deployment.apps/swiss-army-knife created
```

## Listar os pods

```bash
kubectl get pods
NAME                                READY   STATUS    RESTARTS   AGE
swiss-army-knife-6958f8b6f4-64fzh   1/1     Running   0          9m11s
swiss-army-knife-6958f8b6f4-t7plw   1/1     Running   0          9m11s
```

## Acessando o pod

```bash
kubectl exec -it <Nome do pod> -n swiss-army-knife -- sh
```

## Verificando informações do SO

```bash
cat /etc/os-release
	NAME="Ubuntu"
	VERSION="18.04.6 LTS (Bionic Beaver)"
	ID=ubuntu
	ID_LIKE=debian
	PRETTY_NAME="Ubuntu 18.04.6 LTS"
	VERSION_ID="18.04"
	HOME_URL="https://www.ubuntu.com/"
	SUPPORT_URL="https://help.ubuntu.com/"
	BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
	PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
	VERSION_CODENAME=bionic
	UBUNTU_CODENAME=bionic
```

## Deletar um pod

```bash
kubectl delete pod --force  [nome do pod]
```

## Deletar o Deployment do swiss-army-knife

```bash
kubectl delete -f deployment.yaml
deployment.apps "swiss-army-knife" deleted
```
