

# Criando o objeto
apply:
	kubectx sre-dev-gke
	kubens workon
	kubectl apply -f deployment.yaml 
	kubectl port-forward deployment/fullcicle-deployment 8080:80

# Apagando o objeto
delete:
	kubectx sre-dev-gke
	kubens workon
	kubectl delete -f deployment.yaml
