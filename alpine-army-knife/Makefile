

# Criando o objeto
apply:
	kubectx sre-dev-gke
	kubens workon
	kubectl apply -f deployment.yaml 
	sleep 20
	kubectl port-forward deployment.apps/alpine-army-knife-deployment 8080:80

# Acesso via Browser
forward:
	kubectl port-forward deployment.apps/conversao-temperatura 8080:80

# Apagando o objeto
delete:
	kubectx sre-dev-gke
	kubens workon
	kubectl delete -f deployment.yaml
