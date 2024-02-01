# airportnames

[github do projeto](https://github.com/ricardomerces/airportnames?tab=readme-ov-file)

## Steps

1 - Fazer o deployment

    kubectl apply -f deployment.yaml

2 - Configurar o port-forward

    kubectl port-forward deployment/airportnames-deployment 8080:8080

3 - Abrir no Browser

    http://localhost:8080/airportName?iataCode=SDU
