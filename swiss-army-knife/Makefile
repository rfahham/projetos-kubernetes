

# Criando o objeto
apply:
	kubectx sre-dev-gke
	kubens workon
	kubectl apply -f deployment.yaml 
	kubectl port-forward deployment.apps/swiss-army-knife 8080:80

# Acesso via Browser
forward:
	kubectl port-forward deployment.apps/swiss-army-knife 8080:80
	
# Apagando o objeto
delete:
	kubectx sre-dev-gke
	kubens workon
	kubectl delete -f deployment.yaml
