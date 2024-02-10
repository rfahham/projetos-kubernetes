COLOR_RESET = \033[0m
COLOR_BLUE = \033[36m
COLOR_YELLOW = \033[33m
COLOR_GREEN = \033[32m
COLOR_RED = \033[31m

PROJECT := WORKON

## Criando o objeto
apply:
	kubectx sre-dev-gke
	kubens workon
	kubectl apply -f deployment.yaml 
	sleep 20
	kubectl port-forward deployment/workon-deployment 8080:80

## Acesso via Browser
forward:
	kubectl port-forward deployment/workon-deployment 8080:80
	
## Apagando o objeto
delete:
	kubectx sre-dev-gke
	kubens workon
	kubectl delete -f deployment.yaml

##
help:
	@echo "\n${COLOR_YELLOW}------\n${PROJECT}\n------\n${COLOR_RESET}"
	@awk '/^[a-zA-Z\-\_0-9\.%]+:/ { \
		helpMessage = match(lastLine, /^## (.*)/); \
		if (helpMessage) { \
			helpCommand = substr($$1, 0, index($$1, ":")); \
			helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
			printf "${COLOR_BLUE}$$ make %s${COLOR_RESET} %s\n", helpCommand, helpMessage; \
		} \
	} \
	{ lastLine = $$0 }' $(MAKEFILE_LIST) | sort
	@printf "\n"