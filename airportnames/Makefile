

# Criando o objeto
apply:
	kubectx sre-dev-gke
	kubens workon
	kubectl apply -f deployment.yaml
	sleep 20
	kubectl port-forward deployment/airportnames-deployment 8080:8080

# Acesso via Browser
forward:
	kubectl port-forward deployment/airportnames-deployment 8080:8080

# Apagando o objeto
delete:
	kubectx sre-dev-gke
	kubens workon
	kubectl delete -f deployment.yaml
