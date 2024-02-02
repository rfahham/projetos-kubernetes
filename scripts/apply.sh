#!/bin/bash

vermelho="\033[0;31m"
verde="\033[0;32m"

echo -e " \033[0;32m --------------------- \033[0m"
echo -e " \033[0;32m Executando Deployment \033[0m"
echo -e " \033[0;32m --------------------- \033[0m"

kubens

read -p "Digite o namespace do workflow: " NAMESPACE

kubectl create namespace ${NAMESPACE} 2>/dev/null || echo "Namescape already exists"

kubens ${NAMESPACE}


echo "Lista os diretórios"
ls -la 
echo ""

sleep 5



echo "Apply no deployment..."
kubectl apply -f deployment.yaml -n ${NAMESPACE}
echo ""

# sleep 5

# echo "Apply service(balanceador)..."
# kubectl apply -f service.yaml  
# echo ""

sleep 5

echo "Listando os pods..."
kubectl get pods
echo ""

sleep 5

echo "Listando os deployments..."
kubectl get deployment
echo ""

sleep 5

echo "Listando os replicaset..."
kubectl get replicaset
echo ""

sleep 5
echo "O browser abrirá automaticamente..."
open http://localhost:8080
echo ""

sleep 5
echo "Port Forward do release..."
kubectl port-forward deployment/nginx-deployment 8080:80

# curl -I http://localhost:8080/